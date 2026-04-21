.class public Landroidx/media3/common/util/SpeedProviderUtil;
.super Ljava/lang/Object;
.source "SpeedProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/SpeedProviderUtil$SpeedProviderMapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDurationAfterSpeedProviderApplied(Landroidx/media3/common/audio/SpeedProvider;J)J
    .locals 10
    .param p0, "speedProvider"    # Landroidx/media3/common/audio/SpeedProvider;
    .param p1, "durationUs"    # J

    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .local v0, "speedChangeTimeUs":J
    const-wide/16 v2, 0x0

    .line 47
    .local v2, "outputDurationUs":D
    :goto_0
    cmp-long v4, v0, p1

    if-gez v4, :cond_2

    .line 48
    invoke-interface {p0, v0, v1}, Landroidx/media3/common/audio/SpeedProvider;->getNextSpeedChangeTimeUs(J)J

    move-result-wide v4

    .line 49
    .local v4, "nextSpeedChangeTimeUs":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 50
    const-wide v4, 0x7fffffffffffffffL

    .line 52
    :cond_0
    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 53
    nop

    .line 54
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long/2addr v6, v0

    long-to-double v6, v6

    .line 55
    invoke-interface {p0, v0, v1}, Landroidx/media3/common/audio/SpeedProvider;->getSpeed(J)F

    move-result v8

    float-to-double v8, v8

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 56
    move-wide v0, v4

    .line 57
    .end local v4    # "nextSpeedChangeTimeUs":J
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    return-wide v4
.end method

.method public static getNextSpeedChangeSamplePosition(Landroidx/media3/common/audio/SpeedProvider;JI)J
    .locals 6
    .param p0, "speedProvider"    # Landroidx/media3/common/audio/SpeedProvider;
    .param p1, "samplePosition"    # J
    .param p3, "sampleRate"    # I

    .line 86
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 87
    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 89
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    .line 90
    .local v0, "durationUs":J
    invoke-interface {p0, v0, v1}, Landroidx/media3/common/audio/SpeedProvider;->getNextSpeedChangeTimeUs(J)J

    move-result-wide v2

    .line 92
    .local v2, "nextSpeedChangeTimeUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 93
    const-wide/16 v4, -0x1

    return-wide v4

    .line 97
    :cond_2
    invoke-static {v2, v3, p3}, Landroidx/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v4

    return-wide v4
.end method

.method public static getSampleAlignedSpeed(Landroidx/media3/common/audio/SpeedProvider;JI)F
    .locals 3
    .param p0, "speedProvider"    # Landroidx/media3/common/audio/SpeedProvider;
    .param p1, "samplePosition"    # J
    .param p3, "sampleRate"    # I

    .line 70
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 71
    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 73
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    .line 74
    .local v0, "durationUs":J
    invoke-interface {p0, v0, v1}, Landroidx/media3/common/audio/SpeedProvider;->getSpeed(J)F

    move-result v2

    return v2
.end method
