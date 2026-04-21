.class final Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;
.super Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoopingTimeline"
.end annotation


# instance fields
.field private final childPeriodCount:I

.field private final childTimeline:Landroidx/media3/common/Timeline;

.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;I)V
    .locals 3
    .param p1, "childTimeline"    # Landroidx/media3/common/Timeline;
    .param p2, "loopCount"    # I

    .line 139
    new-instance v0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;-><init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 140
    iput-object p1, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Landroidx/media3/common/Timeline;

    .line 141
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 142
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 143
    iput p2, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    .line 144
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    if-lez v0, :cond_1

    .line 145
    const v0, 0x7fffffff

    iget v2, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int/2addr v0, v2

    if-gt p2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "LoopingMediaSource contains too many periods"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 149
    :cond_1
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 1
    .param p1, "childUid"    # Ljava/lang/Object;

    .line 173
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 174
    const/4 v0, -0x1

    return v0

    .line 176
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 1
    .param p1, "periodIndex"    # I

    .line 163
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int v0, p1, v0

    return v0
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 1
    .param p1, "windowIndex"    # I

    .line 168
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    div-int v0, p1, v0

    return v0
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 1
    .param p1, "childIndex"    # I

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 186
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int/2addr v0, p1

    return v0
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 191
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public getPeriodCount()I
    .locals 2

    .line 158
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    iget v1, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;
    .locals 1
    .param p1, "childIndex"    # I

    .line 181
    iget-object v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getWindowCount()I
    .locals 2

    .line 153
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iget v1, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, v1

    return v0
.end method
