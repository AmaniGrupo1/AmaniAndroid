.class Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;
.super Ljava/lang/Object;
.source "VideoFrameReleaseEarlyTimeForecaster.java"


# static fields
.field private static final SMOOTHING_FACTOR:F = 0.2f


# instance fields
.field private derivativeOfEarlyTime:D

.field private derivativeOfEarlyTimeRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private lastFrameEarlyUs:J

.field private lastFramePresentationTimeUs:J


# direct methods
.method public constructor <init>(F)V
    .locals 6
    .param p1, "playbackSpeed"    # F

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 78
    new-instance v0, Landroid/util/Range;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    float-to-double v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->derivativeOfEarlyTimeRange:Landroid/util/Range;

    .line 79
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->derivativeOfEarlyTimeRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->derivativeOfEarlyTime:D

    .line 80
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFramePresentationTimeUs:J

    .line 81
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFrameEarlyUs:J

    .line 82
    return-void
.end method

.method private calculateDerivativeFromLastFrame(JJ)D
    .locals 4
    .param p1, "presentationTimeUs"    # J
    .param p3, "earlyUs"    # J

    .line 139
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFramePresentationTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFrameEarlyUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFramePresentationTimeUs:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 142
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFrameEarlyUs:J

    sub-long v0, p3, v0

    long-to-double v0, v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFramePresentationTimeUs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0

    .line 145
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->derivativeOfEarlyTimeRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private updateDerivativeWithExponentialMovingAverage(D)V
    .locals 4
    .param p1, "latestDerivative"    # D

    .line 149
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->derivativeOfEarlyTime:D

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->derivativeOfEarlyTime:D

    .line 151
    return-void
.end method


# virtual methods
.method public onVideoFrameProcessed(JJ)V
    .locals 5
    .param p1, "framePresentationTimeUs"    # J
    .param p3, "earlyUs"    # J

    .line 93
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 94
    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 95
    nop

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->calculateDerivativeFromLastFrame(JJ)D

    move-result-wide v0

    .line 97
    .local v0, "derivativeFromLastFrame":D
    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->derivativeOfEarlyTimeRange:Landroid/util/Range;

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 97
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->updateDerivativeWithExponentialMovingAverage(D)V

    .line 99
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFramePresentationTimeUs:J

    .line 100
    iput-wide p3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFrameEarlyUs:J

    .line 101
    return-void
.end method

.method public predictEarlyUs(J)J
    .locals 6
    .param p1, "presentationTimeUs"    # J

    .line 111
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFramePresentationTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    return-wide v2

    .line 114
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFrameEarlyUs:J

    long-to-double v0, v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFramePresentationTimeUs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    iget-wide v4, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->derivativeOfEarlyTime:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 133
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->derivativeOfEarlyTimeRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->derivativeOfEarlyTime:D

    .line 134
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFramePresentationTimeUs:J

    .line 135
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->lastFrameEarlyUs:J

    .line 136
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 6
    .param p1, "playbackSpeed"    # F

    .line 126
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 127
    new-instance v0, Landroid/util/Range;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    float-to-double v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->derivativeOfEarlyTimeRange:Landroid/util/Range;

    .line 128
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->reset()V

    .line 129
    return-void
.end method
