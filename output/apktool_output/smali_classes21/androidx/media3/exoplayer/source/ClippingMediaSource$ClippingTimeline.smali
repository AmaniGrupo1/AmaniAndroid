.class final Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingTimeline"
.end annotation


# instance fields
.field private final durationUs:J

.field private final endUs:J

.field private final isDynamic:Z

.field private final startUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;JJZ)V
    .locals 9
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "startUs"    # J
    .param p4, "endUs"    # J
    .param p6, "allowUnseekableMedia"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 480
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 481
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p4, v0

    if-eqz v2, :cond_1

    cmp-long v2, p4, p2

    if-ltz v2, :cond_0

    move-wide v5, p2

    move-wide v7, p4

    goto :goto_0

    .line 482
    :cond_0
    new-instance v3, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    const/4 v4, 0x2

    move-wide v5, p2

    move-wide v7, p4

    .end local p2    # "startUs":J
    .end local p4    # "endUs":J
    .local v5, "startUs":J
    .local v7, "endUs":J
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(IJJ)V

    throw v3

    .line 481
    .end local v5    # "startUs":J
    .end local v7    # "endUs":J
    .restart local p2    # "startUs":J
    .restart local p4    # "endUs":J
    :cond_1
    move-wide v5, p2

    move-wide v7, p4

    .line 485
    .end local p2    # "startUs":J
    .end local p4    # "endUs":J
    .restart local v5    # "startUs":J
    .restart local v7    # "endUs":J
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_a

    .line 488
    new-instance p2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {p1, p3, p2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    .line 489
    .local p2, "window":Landroidx/media3/common/Timeline$Window;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 490
    .end local v5    # "startUs":J
    .local v4, "startUs":J
    if-nez p6, :cond_3

    iget-boolean p5, p2, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-nez p5, :cond_3

    cmp-long p5, v4, v2

    if-eqz p5, :cond_3

    iget-boolean p5, p2, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz p5, :cond_2

    goto :goto_1

    .line 491
    :cond_2
    new-instance p3, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p3, p4}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p3

    .line 493
    :cond_3
    :goto_1
    cmp-long p5, v7, v0

    if-nez p5, :cond_4

    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    goto :goto_2

    :cond_4
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 494
    .end local v7    # "endUs":J
    .local v0, "endUs":J
    :goto_2
    iget-wide v2, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, v2, v6

    if-eqz p5, :cond_6

    .line 495
    iget-wide v2, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long p5, v0, v2

    if-lez p5, :cond_5

    .line 496
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 498
    :cond_5
    cmp-long p5, v4, v0

    if-lez p5, :cond_6

    .line 499
    move-wide v4, v0

    .line 502
    :cond_6
    iput-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    .line 503
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    .line 504
    cmp-long p5, v0, v6

    if-nez p5, :cond_7

    move-wide v2, v6

    goto :goto_3

    :cond_7
    sub-long v2, v0, v4

    :goto_3
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    .line 505
    iget-boolean p5, p2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz p5, :cond_9

    cmp-long p5, v0, v6

    if-eqz p5, :cond_8

    iget-wide v2, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long p5, v2, v6

    if-eqz p5, :cond_9

    iget-wide v2, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long p5, v0, v2

    if-nez p5, :cond_9

    :cond_8
    move p3, p4

    :cond_9
    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    .line 509
    return-void

    .line 486
    .end local v0    # "endUs":J
    .end local v4    # "startUs":J
    .end local p2    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v5    # "startUs":J
    .restart local v7    # "endUs":J
    :cond_a
    new-instance p2, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p2, p3}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p2
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 12
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 535
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 536
    invoke-virtual {p2}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long v10, v0, v2

    .line 538
    .local v10, "positionInClippedWindowUs":J
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    sub-long v2, v0, v10

    :goto_0
    move-wide v8, v2

    .line 539
    .local v8, "periodDurationUs":J
    iget-object v5, p2, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v6, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    .end local p2    # "period":Landroidx/media3/common/Timeline$Period;
    .local v4, "period":Landroidx/media3/common/Timeline$Period;
    invoke-virtual/range {v4 .. v11}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    return-object p2
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 6
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 513
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 514
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 515
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 516
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    iput-boolean v0, p2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    .line 517
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 518
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 519
    nop

    .line 520
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 521
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr v0, v4

    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 523
    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    .line 524
    .local v0, "startMs":J
    iget-wide v4, p2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    .line 525
    iget-wide v4, p2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    add-long/2addr v4, v0

    iput-wide v4, p2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    .line 527
    :cond_2
    iget-wide v4, p2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    .line 528
    iget-wide v2, p2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    .line 530
    :cond_3
    return-object p2
.end method
