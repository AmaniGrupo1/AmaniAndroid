.class final Landroidx/media3/exoplayer/ExoPlayerImpl$Api31;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$registerMediaMetricsListener$0(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usePlatformDiagnostics"    # Z
    .param p2, "player"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p3, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 3717
    invoke-static {p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->create(Landroid/content/Context;)Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    move-result-object v0

    .line 3718
    .local v0, "listener":Landroidx/media3/exoplayer/analytics/MediaMetricsListener;
    if-nez v0, :cond_0

    .line 3719
    const-string v1, "ExoPlayerImpl"

    const-string v2, "MediaMetricsService unavailable."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3720
    return-void

    .line 3722
    :cond_0
    if-eqz p1, :cond_1

    .line 3723
    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 3725
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroidx/media3/exoplayer/analytics/PlayerId;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    .line 3726
    return-void
.end method

.method public static registerMediaMetricsListener(Landroid/content/Context;Landroidx/media3/exoplayer/ExoPlayerImpl;ZLandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "player"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p2, "usePlatformDiagnostics"    # Z
    .param p3, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 3713
    nop

    .line 3714
    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    .line 3715
    .local v0, "playbackThreadHandler":Landroidx/media3/common/util/HandlerWrapper;
    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 3727
    return-void
.end method
