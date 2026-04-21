.class public Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;
    }
.end annotation


# instance fields
.field private final clock:Landroidx/media3/common/util/Clock;

.field private final eventTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroidx/media3/common/util/HandlerWrapper;

.field private isSeeking:Z

.field private listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private player:Landroidx/media3/common/Player;

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$beemuUlrcRdYmQiMx95bEndNv9Q(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->releaseInternal()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/Clock;)V
    .locals 2
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/Clock;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->clock:Landroidx/media3/common/util/Clock;

    .line 93
    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    invoke-static {}, Landroidx/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 94
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->period:Landroidx/media3/common/Timeline$Period;

    .line 95
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->window:Landroidx/media3/common/Timeline$Window;

    .line 96
    new-instance v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->period:Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;-><init>(Landroidx/media3/common/Timeline$Period;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    .line 98
    return-void
.end method

.method private generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 6
    .param p1, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 981
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 985
    move-object v1, v0

    goto :goto_0

    .line 986
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/common/Timeline;

    move-result-object v1

    :goto_0
    nop

    .line 987
    .local v1, "knownTimeline":Landroidx/media3/common/Timeline;
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 994
    :cond_1
    iget-object v0, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 995
    .local v0, "windowIndex":I
    invoke-virtual {p0, v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    return-object v2

    .line 988
    .end local v0    # "windowIndex":I
    :cond_2
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v2

    .line 989
    .local v2, "windowIndex":I
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-interface {v3}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v3

    .line 990
    .local v3, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 991
    .local v4, "windowIsInTimeline":Z
    :goto_2
    nop

    .line 992
    if-eqz v4, :cond_4

    move-object v5, v3

    goto :goto_3

    :cond_4
    sget-object v5, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    .line 991
    :goto_3
    invoke-virtual {p0, v5, v2, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateLoadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 1007
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getLoadingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 4
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1012
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 1014
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 1015
    invoke-virtual {v2, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/common/Timeline;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1016
    .local v0, "isInKnownTimeline":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1017
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    goto :goto_1

    .line 1018
    :cond_1
    sget-object v1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, v1, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 1016
    :goto_1
    return-object v1

    .line 1020
    .end local v0    # "isInKnownTimeline":Z
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    .line 1021
    .local v2, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    if-ge p1, v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1022
    .local v0, "windowIsInTimeline":Z
    :goto_2
    nop

    .line 1023
    if-eqz v0, :cond_4

    move-object v1, v2

    goto :goto_3

    :cond_4
    sget-object v1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    .line 1022
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    return-object v1
.end method

.method private generatePlayingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 999
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getPlayingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 1003
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getReadingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private getEventTimeForErrorEvent(Landroidx/media3/common/PlaybackException;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 2
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;

    .line 1027
    instance-of v0, p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_0

    .line 1028
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 1029
    .local v0, "exoError":Landroidx/media3/exoplayer/ExoPlaybackException;
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    return-object v1

    .line 1033
    .end local v0    # "exoError":Landroidx/media3/exoplayer/ExoPlaybackException;
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$notifySeekStarted$1(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 164
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onSeekStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onAudioAttributesChanged$58(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 769
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioAttributesChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$onAudioCodecError$11(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "audioCodecError"    # Ljava/lang/Exception;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 269
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioCodecError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onAudioDecoderInitialized$4(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 3
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializationDurationMs"    # J
    .param p4, "initializedTimestampMs"    # J
    .param p6, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 200
    invoke-interface {p6, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    .line 201
    move-object v0, p1

    move-object p1, p0

    move-object p0, p6

    move-wide v1, p2

    move-object p2, v0

    move-wide p3, p4

    move-wide p5, v1

    .end local p4    # "initializedTimestampMs":J
    .end local p6    # "listener":Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .local p0, "listener":Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .local p1, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .local p2, "decoderName":Ljava/lang/String;
    .local p3, "initializedTimestampMs":J
    .local p5, "initializationDurationMs":J
    invoke-interface/range {p0 .. p6}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    .line 203
    return-void
.end method

.method static synthetic lambda$onAudioDecoderReleased$8(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 242
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAudioDisabled$9(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 251
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onAudioEnabled$3(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 188
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onAudioInputFormatChanged$5(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 213
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method static synthetic lambda$onAudioPositionAdvancing$6(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "playoutStartSystemTimeMs"    # J
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 222
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioPositionAdvancing(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onAudioSessionIdChanged$57(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "audioSessionId"    # I
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 760
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioSessionIdChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onAudioSinkError$10(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "audioSinkError"    # Ljava/lang/Exception;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 260
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioSinkError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onAudioTrackInitialized$12(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 278
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioTrackInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method static synthetic lambda$onAudioTrackReleased$13(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 287
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioTrackReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method static synthetic lambda$onAudioUnderrun$7(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 1
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J
    .param p6, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 233
    move v0, p1

    move-object p1, p0

    move-object p0, p6

    move-wide p5, p4

    move-wide p3, p2

    move p2, v0

    .end local p4    # "elapsedSinceLastFeedMs":J
    .end local p6    # "listener":Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .local p0, "listener":Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .local p1, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .local p2, "bufferSize":I
    .local p3, "bufferSizeMs":J
    .local p5, "elapsedSinceLastFeedMs":J
    invoke-interface/range {p0 .. p6}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioUnderrun(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method static synthetic lambda$onAvailableCommandsChanged$36(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "availableCommands"    # Landroidx/media3/common/Player$Commands;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 551
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAvailableCommandsChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$onBandwidthSample$63(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 1
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "elapsedMs"    # I
    .param p2, "bytesTransferred"    # J
    .param p4, "bitrateEstimate"    # J
    .param p6, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 837
    move v0, p1

    move-object p1, p0

    move-object p0, p6

    move-wide p5, p4

    move-wide p3, p2

    move p2, v0

    .end local p4    # "bitrateEstimate":J
    .end local p6    # "listener":Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .local p0, "listener":Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .local p1, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .local p2, "elapsedMs":I
    .local p3, "bytesTransferred":J
    .local p5, "bitrateEstimate":J
    invoke-interface/range {p0 .. p6}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onBandwidthEstimate(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method static synthetic lambda$onCues$54(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "cues"    # Ljava/util/List;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 735
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onCues(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onCues$55(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "cueGroup"    # Landroidx/media3/common/text/CueGroup;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 742
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onCues(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$onDeviceInfoChanged$61(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 805
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDeviceInfoChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$onDeviceVolumeChanged$62(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "volume"    # I
    .param p2, "muted"    # Z
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 814
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDeviceVolumeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method static synthetic lambda$onDownstreamFormatChanged$31(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 488
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDownstreamFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysLoaded$65(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/drm/KeyRequestInfo;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "keyRequestInfo"    # Landroidx/media3/exoplayer/drm/KeyRequestInfo;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 865
    invoke-interface {p2, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmKeysLoaded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    .line 866
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmKeysLoaded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V

    .line 867
    return-void
.end method

.method static synthetic lambda$onDrmKeysRemoved$68(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 895
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmKeysRemoved(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysRestored$67(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 886
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmKeysRestored(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionAcquired$64(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "state"    # I
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 851
    invoke-interface {p2, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionAcquired(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    .line 852
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionAcquired(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    .line 853
    return-void
.end method

.method static synthetic lambda$onDrmSessionManagerError$66(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 877
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionManagerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionReleased$69(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 904
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDroppedFrames$18(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J
    .param p4, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 341
    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDroppedVideoFrames(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V

    return-void
.end method

.method static synthetic lambda$onDroppedSeeksWhileScrubbing$24(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "droppedSeekCount"    # I
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 396
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDroppedSeeksWhileScrubbing(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onIsLoadingChanged$35(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "isLoading"    # Z
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 540
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    .line 541
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onIsLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    .line 542
    return-void
.end method

.method static synthetic lambda$onIsPlayingChanged$41(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "isPlaying"    # Z
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 600
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onIsPlayingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onLoadCanceled$28(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 452
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onLoadCanceled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onLoadCompleted$27(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 439
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onLoadCompleted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onLoadError$29(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 1
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p3, "error"    # Ljava/io/IOException;
    .param p4, "wasCanceled"    # Z
    .param p5, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 468
    move-object v0, p1

    move-object p1, p0

    move-object p0, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, v0

    .local p0, "listener":Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .local p1, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .local p2, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .local p3, "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .local p4, "error":Ljava/io/IOException;
    .local p5, "wasCanceled":Z
    invoke-interface/range {p0 .. p5}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onLoadError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method static synthetic lambda$onLoadStarted$26(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p3, "retryCount"    # I
    .param p4, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 424
    invoke-interface {p4, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onLoadStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 425
    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onLoadStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    .line 426
    return-void
.end method

.method static synthetic lambda$onMaxSeekToPreviousPositionChanged$50(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "maxSeekToPreviousPositionMs"    # J
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 700
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onMaxSeekToPreviousPositionChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onMediaItemTransition$33(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "reason"    # I
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 514
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onMediaItemTransition(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$onMediaMetadataChanged$51(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 709
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onMediaMetadataChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onMetadata$53(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 727
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onMetadata(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method static synthetic lambda$onPlayWhenReadyChanged$39(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 580
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlayWhenReadyChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method static synthetic lambda$onPlaybackParametersChanged$47(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 672
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlaybackParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$onPlaybackStateChanged$38(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "playbackState"    # I
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 570
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlaybackStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onPlaybackSuppressionReasonChanged$40(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "playbackSuppressionReason"    # I
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 591
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlaybackSuppressionReasonChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onPlayerError$44(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 627
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlayerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlayerErrorChanged$45(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 636
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlayerErrorChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlayerStateChanged$37(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 561
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlayerStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method static synthetic lambda$onPlaylistMetadataChanged$52(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 718
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlaylistMetadataChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onPositionDiscontinuity$46(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "reason"    # I
    .param p2, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p4, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 661
    invoke-interface {p4, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    .line 662
    invoke-interface {p4, p0, p2, p3, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    .line 663
    return-void
.end method

.method static synthetic lambda$onRenderedFirstFrame$21(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "output"    # Ljava/lang/Object;
    .param p2, "renderTimeMs"    # J
    .param p4, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 368
    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onRenderedFirstFrame(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic lambda$onRendererReadyChanged$2(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "rendererIndex"    # I
    .param p2, "rendererTrackType"    # I
    .param p3, "isRendererReady"    # Z
    .param p4, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 176
    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onRendererReadyChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZ)V

    return-void
.end method

.method static synthetic lambda$onRepeatModeChanged$42(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "repeatMode"    # I
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 609
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onRepeatModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onSeekBackIncrementChanged$48(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "seekBackIncrementMs"    # J
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 681
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onSeekBackIncrementChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onSeekForwardIncrementChanged$49(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "seekForwardIncrementMs"    # J
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 690
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onSeekForwardIncrementChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onShuffleModeEnabledChanged$43(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "shuffleModeEnabled"    # Z
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 618
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onShuffleModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onSkipSilenceEnabledChanged$56(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "skipSilenceEnabled"    # Z
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 751
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onSkipSilenceEnabledChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onSurfaceSizeChanged$25(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 405
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onSurfaceSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method static synthetic lambda$onTimelineChanged$32(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "reason"    # I
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 504
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onTimelineChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onTrackSelectionParametersChanged$60(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 796
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onTrackSelectionParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$onTracksChanged$34(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "tracks"    # Landroidx/media3/common/Tracks;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 523
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onTracksChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method static synthetic lambda$onUpstreamDiscarded$30(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 478
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onUpstreamDiscarded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onVideoCodecError$23(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "videoCodecError"    # Ljava/lang/Exception;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 387
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoCodecError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onVideoDecoderInitialized$16(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 3
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializationDurationMs"    # J
    .param p4, "initializedTimestampMs"    # J
    .param p6, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 319
    invoke-interface {p6, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    .line 320
    move-object v0, p1

    move-object p1, p0

    move-object p0, p6

    move-wide v1, p2

    move-object p2, v0

    move-wide p3, p4

    move-wide p5, v1

    .end local p4    # "initializedTimestampMs":J
    .end local p6    # "listener":Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .local p0, "listener":Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .local p1, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .local p2, "decoderName":Ljava/lang/String;
    .local p3, "initializedTimestampMs":J
    .local p5, "initializationDurationMs":J
    invoke-interface/range {p0 .. p6}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    .line 322
    return-void
.end method

.method static synthetic lambda$onVideoDecoderReleased$19(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 350
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onVideoDisabled$20(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 359
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onVideoEnabled$15(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 307
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onVideoFrameProcessingOffset$22(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I
    .param p4, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 378
    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoFrameProcessingOffset(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method static synthetic lambda$onVideoInputFormatChanged$17(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .param p3, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 332
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method static synthetic lambda$onVideoSizeChanged$59(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 6
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "videoSize"    # Landroidx/media3/common/VideoSize;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 780
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V

    .line 781
    iget v2, p1, Landroidx/media3/common/VideoSize;->width:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->height:I

    const/4 v4, 0x0

    iget v5, p1, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    move-object v1, p0

    move-object v0, p2

    .end local p0    # "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .end local p2    # "listener":Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .local v0, "listener":Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .local v1, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIIF)V

    .line 787
    return-void
.end method

.method static synthetic lambda$onVolumeChanged$14(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;FLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "volume"    # F
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 296
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVolumeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method

.method static synthetic lambda$releaseInternal$70(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0
    .param p0, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p1, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 976
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlayerReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method private releaseInternal()V
    .locals 3

    .line 972
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 973
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 977
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->release()V

    .line 978
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 117
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method protected final generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 925
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method protected final generateEventTime(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 17
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    .line 932
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    const/4 v1, 0x0

    move-object v6, v1

    .end local p3    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v1, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    goto :goto_0

    .line 932
    .end local v1    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local p3    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :cond_0
    move-object/from16 v6, p3

    .line 936
    .end local p3    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v6, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 938
    .local v2, "realtimeMs":J
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 939
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 940
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v5, v1, :cond_1

    move v1, v7

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_1
    move/from16 v16, v1

    .line 941
    .local v16, "isInCurrentWindow":Z
    const-wide/16 v9, 0x0

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 942
    if-eqz v16, :cond_2

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 944
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v1

    iget v11, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v1, v11, :cond_2

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 945
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v1

    iget v11, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v1, v11, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    .line 947
    .local v7, "isCurrentAd":Z
    :goto_2
    if-eqz v7, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v9

    .line 948
    .end local v7    # "isCurrentAd":Z
    .local v9, "eventPositionMs":J
    :cond_3
    move-wide v7, v9

    goto :goto_4

    .end local v9    # "eventPositionMs":J
    :cond_4
    if-eqz v16, :cond_5

    .line 949
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v9

    move-wide v7, v9

    .restart local v9    # "eventPositionMs":J
    goto :goto_4

    .line 954
    .end local v9    # "eventPositionMs":J
    :cond_5
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v4, v5, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v9

    :goto_3
    move-wide v7, v9

    .line 957
    .local v7, "eventPositionMs":J
    :goto_4
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v11

    .line 958
    .local v11, "currentMediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    new-instance v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v9, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 964
    invoke-interface {v9}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v9

    iget-object v10, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 965
    invoke-interface {v10}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v10

    iget-object v12, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 967
    invoke-interface {v12}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v12

    iget-object v14, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 968
    invoke-interface {v14}, Landroidx/media3/common/Player;->getTotalBufferedDuration()J

    move-result-wide v14

    invoke-direct/range {v1 .. v15}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;-><init>(JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)V

    .line 958
    return-object v1
.end method

.method synthetic lambda$setPlayer$0$androidx-media3-exoplayer-analytics-DefaultAnalyticsCollector(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/common/FlagSet;)V
    .locals 2
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p3, "flags"    # Landroidx/media3/common/FlagSet;

    .line 138
    new-instance v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-direct {v0, p3, v1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;-><init>(Landroidx/media3/common/FlagSet;Landroid/util/SparseArray;)V

    invoke-interface {p2, p1, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public final notifySeekStarted()V
    .locals 3

    .line 160
    iget-boolean v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 162
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    .line 163
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda57;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda57;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 166
    .end local v0    # "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    :cond_0
    return-void
.end method

.method public final onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 3
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 765
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 766
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;)V

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 770
    return-void
.end method

.method public final onAudioCodecError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "audioCodecError"    # Ljava/lang/Exception;

    .line 265
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 266
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 v2, 0x405

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 270
    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 195
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 196
    .local v1, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;

    move-object v2, p1

    move-wide v5, p2

    move-wide v3, p4

    .end local p1    # "decoderName":Ljava/lang/String;
    .end local p2    # "initializedTimestampMs":J
    .end local p4    # "initializationDurationMs":J
    .local v2, "decoderName":Ljava/lang/String;
    .local v3, "initializationDurationMs":J
    .local v5, "initializedTimestampMs":J
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v1, p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 204
    return-void
.end method

.method public final onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 3
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 238
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 239
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 v2, 0x3f4

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 243
    return-void
.end method

.method public final onAudioDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 3
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 247
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 248
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    const/16 v2, 0x3f5

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 252
    return-void
.end method

.method public final onAudioEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 3
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 184
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 185
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    const/16 v2, 0x3ef

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 189
    return-void
.end method

.method public final onAudioInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 3
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 209
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 210
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    const/16 v2, 0x3f1

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 214
    return-void
.end method

.method public final onAudioPositionAdvancing(J)V
    .locals 3
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 218
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 219
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    const/16 v2, 0x3f2

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 223
    return-void
.end method

.method public final onAudioSessionIdChanged(I)V
    .locals 3
    .param p1, "audioSessionId"    # I

    .line 756
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 757
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 v2, 0x15

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 761
    return-void
.end method

.method public final onAudioSinkError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 256
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 257
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda69;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda69;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 v2, 0x3f6

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 261
    return-void
.end method

.method public onAudioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 3
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 274
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 275
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    const/16 v2, 0x407

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 279
    return-void
.end method

.method public onAudioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 3
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 283
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 284
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda67;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda67;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    const/16 v2, 0x408

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 288
    return-void
.end method

.method public final onAudioUnderrun(IJJ)V
    .locals 7
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 228
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 229
    .local v1, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "bufferSize":I
    .end local p2    # "bufferSizeMs":J
    .end local p4    # "elapsedSinceLastFeedMs":J
    .local v2, "bufferSize":I
    .local v3, "bufferSizeMs":J
    .local v5, "elapsedSinceLastFeedMs":J
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v1, p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 234
    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 3
    .param p1, "availableCommands"    # Landroidx/media3/common/Player$Commands;

    .line 547
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 548
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;)V

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 552
    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 7
    .param p1, "elapsedMs"    # I
    .param p2, "bytesTransferred"    # J
    .param p4, "bitrateEstimate"    # J

    .line 832
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateLoadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 833
    .local v1, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "elapsedMs":I
    .end local p2    # "bytesTransferred":J
    .end local p4    # "bitrateEstimate":J
    .local v2, "elapsedMs":I
    .local v3, "bytesTransferred":J
    .local v5, "bitrateEstimate":J
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 p1, 0x3ee

    invoke-virtual {p0, v1, p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 838
    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 3
    .param p1, "cueGroup"    # Landroidx/media3/common/text/CueGroup;

    .line 740
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 741
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;)V

    const/16 v2, 0x1b

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 743
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 733
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 734
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    const/16 v2, 0x1b

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 736
    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 3
    .param p1, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;

    .line 801
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 802
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda47;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda47;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;)V

    const/16 v2, 0x1d

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 806
    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "muted"    # Z

    .line 810
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 811
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V

    const/16 v2, 0x1e

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 815
    return-void
.end method

.method public final onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 484
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 485
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    const/16 v2, 0x3ec

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 489
    return-void
.end method

.method public onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "keyRequestInfo"    # Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    .line 860
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 861
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V

    const/16 v2, 0x3ff

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 868
    return-void
.end method

.method public final onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 891
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 892
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x402

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 896
    return-void
.end method

.method public final onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 882
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 883
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x401

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 887
    return-void
.end method

.method public final onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "state"    # I

    .line 846
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 847
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;

    invoke-direct {v1, v0, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 v2, 0x3fe

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 854
    return-void
.end method

.method public final onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "error"    # Ljava/lang/Exception;

    .line 873
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 874
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;

    invoke-direct {v1, v0, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 878
    return-void
.end method

.method public final onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 900
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 901
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda68;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda68;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x403

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 905
    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J

    .line 337
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 338
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V

    const/16 v2, 0x3fa

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 342
    return-void
.end method

.method public onDroppedSeeksWhileScrubbing(I)V
    .locals 3
    .param p1, "droppedSeekCount"    # I

    .line 392
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 393
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 v2, 0x40a

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 397
    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/common/Player$Events;

    .line 826
    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 3
    .param p1, "isLoading"    # Z

    .line 535
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 536
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 543
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 3
    .param p1, "isPlaying"    # Z

    .line 596
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 597
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 601
    return-void
.end method

.method public final onLoadCanceled(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 448
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 449
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;

    invoke-direct {v1, v0, p3, p4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    const/16 v2, 0x3ea

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 453
    return-void
.end method

.method public final onLoadCompleted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 435
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 436
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;

    invoke-direct {v1, v0, p3, p4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 440
    return-void
.end method

.method public final onLoadError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 463
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 464
    .local v1, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .end local p3    # "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .end local p4    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .end local p5    # "error":Ljava/io/IOException;
    .end local p6    # "wasCanceled":Z
    .local v2, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .local v3, "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .local v4, "error":Ljava/io/IOException;
    .local v5, "wasCanceled":Z
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, v1, p3, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 469
    return-void
.end method

.method public final onLoadStarted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p5, "retryCount"    # I

    .line 419
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 420
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p3, p4, p5}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 427
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .line 530
    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 3
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 695
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 696
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    const/16 v2, 0x12

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 701
    return-void
.end method

.method public final onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 3
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "reason"    # I

    .line 510
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 511
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 515
    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 3
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 705
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 706
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V

    const/16 v2, 0xe

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 710
    return-void
.end method

.method public final onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 3
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 723
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 724
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;)V

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 728
    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 576
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 577
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 581
    return-void
.end method

.method public final onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 3
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 668
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 669
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;)V

    const/16 v2, 0xc

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 673
    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 3
    .param p1, "playbackState"    # I

    .line 566
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 567
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 571
    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .locals 3
    .param p1, "playbackSuppressionReason"    # I

    .line 586
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 587
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 592
    return-void
.end method

.method public final onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 3
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;

    .line 623
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Landroidx/media3/common/PlaybackException;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 624
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 628
    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 3
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;

    .line 632
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Landroidx/media3/common/PlaybackException;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 633
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 637
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 557
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 558
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 562
    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 3
    .param p1, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 714
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 715
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V

    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 719
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 643
    return-void
.end method

.method public final onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 3
    .param p1, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 652
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    .line 655
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onPositionDiscontinuity(Landroidx/media3/common/Player;)V

    .line 656
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 657
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;

    invoke-direct {v1, v0, p3, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    const/16 v2, 0xb

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 664
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .line 821
    return-void
.end method

.method public final onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 3
    .param p1, "output"    # Ljava/lang/Object;
    .param p2, "renderTimeMs"    # J

    .line 364
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 365
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    const/16 v2, 0x1a

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 369
    return-void
.end method

.method public onRendererReadyChanged(IIZ)V
    .locals 3
    .param p1, "rendererIndex"    # I
    .param p2, "rendererTrackType"    # I
    .param p3, "isRendererReady"    # Z

    .line 171
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 172
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZ)V

    const/16 v2, 0x409

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 178
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 3
    .param p1, "repeatMode"    # I

    .line 605
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 606
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda62;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda62;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 610
    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 3
    .param p1, "seekBackIncrementMs"    # J

    .line 677
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 678
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 682
    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 3
    .param p1, "seekForwardIncrementMs"    # J

    .line 686
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 687
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 691
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 614
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 615
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda70;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda70;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 619
    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .locals 3
    .param p1, "skipSilenceEnabled"    # Z

    .line 747
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 748
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda19;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/16 v2, 0x17

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 752
    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 401
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 402
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda71;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda71;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V

    const/16 v2, 0x18

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 406
    return-void
.end method

.method public final onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 3
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "reason"    # I

    .line 499
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onTimelineChanged(Landroidx/media3/common/Player;)V

    .line 500
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 501
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 505
    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 792
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 793
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;)V

    const/16 v2, 0x13

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 797
    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 3
    .param p1, "tracks"    # Landroidx/media3/common/Tracks;

    .line 519
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 520
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 524
    return-void
.end method

.method public final onUpstreamDiscarded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 474
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 475
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda64;

    invoke-direct {v1, v0, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda64;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    const/16 v2, 0x3ed

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 479
    return-void
.end method

.method public final onVideoCodecError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "videoCodecError"    # Ljava/lang/Exception;

    .line 383
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 384
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 v2, 0x406

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 388
    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 314
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 315
    .local v1, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;

    move-object v2, p1

    move-wide v5, p2

    move-wide v3, p4

    .end local p1    # "decoderName":Ljava/lang/String;
    .end local p2    # "initializedTimestampMs":J
    .end local p4    # "initializationDurationMs":J
    .local v2, "decoderName":Ljava/lang/String;
    .local v3, "initializationDurationMs":J
    .local v5, "initializedTimestampMs":J
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f8

    invoke-virtual {p0, v1, p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 323
    return-void
.end method

.method public final onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 3
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 346
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 347
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 v2, 0x3fb

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 351
    return-void
.end method

.method public final onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 3
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 355
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 356
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    const/16 v2, 0x3fc

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 360
    return-void
.end method

.method public final onVideoEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 3
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 303
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 304
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda60;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda60;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    const/16 v2, 0x3f7

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 308
    return-void
.end method

.method public final onVideoFrameProcessingOffset(JI)V
    .locals 3
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I

    .line 373
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 374
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V

    const/16 v2, 0x3fd

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 379
    return-void
.end method

.method public final onVideoInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 3
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 328
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 329
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    const/16 v2, 0x3f9

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 333
    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 3
    .param p1, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 775
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 776
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda56;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda56;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V

    const/16 v2, 0x19

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 788
    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 3
    .param p1, "volume"    # F

    .line 292
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 293
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V

    const/16 v2, 0x16

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 297
    return-void
.end method

.method public release()V
    .locals 2

    .line 146
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->handler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;-><init>(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public removeListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 124
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method protected final sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "eventFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            "I",
            "Landroidx/media3/common/util/ListenerSet$Event<",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener;",
            ">;)V"
        }
    .end annotation

    .line 919
    .local p3, "eventInvocation":Landroidx/media3/common/util/ListenerSet$Event;, "Landroidx/media3/common/util/ListenerSet$Event<Landroidx/media3/exoplayer/analytics/AnalyticsListener;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 920
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 921
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;Landroid/os/Looper;)V
    .locals 3
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->access$000(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 131
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Player;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 132
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->clock:Landroidx/media3/common/util/Clock;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 133
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->clock:Landroidx/media3/common/util/Clock;

    new-instance v2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;Landroidx/media3/common/Player;)V

    .line 134
    invoke-virtual {v0, p2, v1, v2}, Landroidx/media3/common/util/ListenerSet;->copy(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)Landroidx/media3/common/util/ListenerSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 139
    return-void
.end method

.method public setThrowsWhenUsingWrongThread(Z)V
    .locals 1
    .param p1, "throwsWhenUsingWrongThread"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->setThrowsWhenUsingWrongThread(Z)V

    .line 112
    return-void
.end method

.method public final updateMediaPeriodQueueInfo(Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .param p2, "readingPeriod"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 152
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onQueueUpdated(Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Player;)V

    .line 153
    return-void
.end method
