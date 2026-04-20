.class public final Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;
.super Ljava/lang/Object;
.source "ServerSideAdInsertionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addAdGroupToAdPlaybackState(Landroidx/media3/common/AdPlaybackState;JJ[J)Landroidx/media3/common/AdPlaybackState;
    .locals 9
    .param p0, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;
    .param p1, "fromPositionUs"    # J
    .param p3, "contentResumeOffsetUs"    # J
    .param p5, "adDurationsUs"    # [J

    .line 60
    nop

    .line 61
    const/4 v0, -0x1

    invoke-static {p1, p2, v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v0

    .line 63
    .local v0, "adGroupInsertionPositionUs":J
    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move v4, v2

    .line 64
    .local v4, "insertionIndex":I
    :goto_0
    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v4, v2, :cond_0

    .line 65
    invoke-virtual {p0, v4}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    iget-wide v2, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p0, v4}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    iget-wide v2, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    :cond_0
    nop

    .line 71
    invoke-virtual {p0, v4, v0, v1}, Landroidx/media3/common/AdPlaybackState;->withNewAdGroup(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    .line 72
    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/AdPlaybackState;->withIsServerSideInserted(IZ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    array-length v3, p5

    .line 73
    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/AdPlaybackState;->withAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v4, p5}, Landroidx/media3/common/AdPlaybackState;->withAdDurationsUs(I[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v4, p3, p4}, Landroidx/media3/common/AdPlaybackState;->withContentResumeOffsetUs(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    .line 77
    const/4 v2, 0x0

    move-object v3, p0

    .line 78
    .end local p0    # "adPlaybackState":Landroidx/media3/common/AdPlaybackState;
    .local v2, "adIndex":I
    .local v3, "adPlaybackState":Landroidx/media3/common/AdPlaybackState;
    :goto_1
    array-length p0, p5

    if-ge v2, p0, :cond_1

    aget-wide v5, p5, v2

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-nez p0, :cond_1

    .line 79
    add-int/lit8 p0, v2, 0x1

    .line 80
    .end local v2    # "adIndex":I
    .local p0, "adIndex":I
    invoke-virtual {v3, v4, v2}, Landroidx/media3/common/AdPlaybackState;->withSkippedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v3

    move v2, p0

    goto :goto_1

    .line 82
    .end local p0    # "adIndex":I
    .restart local v2    # "adIndex":I
    :cond_1
    nop

    .line 83
    invoke-static {p5}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v5

    .line 82
    move-wide v7, p3

    .end local p3    # "contentResumeOffsetUs":J
    .local v7, "contentResumeOffsetUs":J
    invoke-static/range {v3 .. v8}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->correctFollowingAdGroupTimes(Landroidx/media3/common/AdPlaybackState;IJJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method private static correctFollowingAdGroupTimes(Landroidx/media3/common/AdPlaybackState;IJJ)Landroidx/media3/common/AdPlaybackState;
    .locals 7
    .param p0, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;
    .param p1, "adGroupInsertionIndex"    # I
    .param p2, "insertedAdDurationUs"    # J
    .param p4, "addedContentResumeOffsetUs"    # J

    .line 304
    neg-long v0, p2

    add-long/2addr v0, p4

    .line 305
    .local v0, "followingAdGroupTimeUsOffset":J
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v2, v3, :cond_1

    .line 306
    invoke-virtual {p0, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    iget-wide v3, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 307
    .local v3, "adGroupTimeUs":J
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 308
    add-long v5, v3, v0

    .line 309
    invoke-virtual {p0, v2, v5, v6}, Landroidx/media3/common/AdPlaybackState;->withAdGroupTimeUs(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    .line 305
    .end local v3    # "adGroupTimeUs":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    .end local v2    # "i":I
    :cond_1
    return-object p0
.end method

.method public static getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I
    .locals 3
    .param p0, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;
    .param p1, "adGroupIndex"    # I

    .line 295
    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 296
    .local v0, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    :goto_0
    return v1
.end method

.method public static getMediaPeriodPositionUs(JLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/AdPlaybackState;)J
    .locals 2
    .param p0, "positionUs"    # J
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;

    .line 148
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v1, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {p0, p1, v0, v1, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForAd(JIILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v0

    goto :goto_0

    .line 151
    :cond_0
    iget v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-static {p0, p1, v0, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v0

    .line 148
    :goto_0
    return-wide v0
.end method

.method public static getMediaPeriodPositionUsForAd(JIILandroidx/media3/common/AdPlaybackState;)J
    .locals 7
    .param p0, "positionUs"    # J
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;

    .line 197
    invoke-virtual {p4, p2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 198
    .local v0, "currentAdGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-wide v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    sub-long/2addr p0, v1

    .line 199
    iget v1, p4, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 200
    invoke-virtual {p4, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 201
    .local v2, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-static {p4, v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 202
    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v5, v4, v3

    sub-long/2addr p0, v5

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    .end local v3    # "j":I
    :cond_0
    iget-wide v3, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr p0, v3

    .line 199
    .end local v2    # "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_1
    invoke-static {p4, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result v1

    if-ge p3, v1, :cond_2

    .line 207
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p3, :cond_2

    .line 208
    iget-object v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v3, v2, v1

    sub-long/2addr p0, v3

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 211
    .end local v1    # "i":I
    :cond_2
    return-wide p0
.end method

.method public static getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J
    .locals 10
    .param p0, "positionUs"    # J
    .param p2, "nextAdGroupIndex"    # I
    .param p3, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;

    .line 264
    const-wide/16 v0, 0x0

    .line 265
    .local v0, "totalAdDurationBeforePositionUs":J
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 266
    iget p2, p3, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    .line 268
    :cond_0
    iget v2, p3, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 269
    invoke-virtual {p3, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 270
    .local v3, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    sub-long v6, p0, v0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 272
    goto :goto_2

    .line 274
    :cond_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-static {p3, v2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 275
    iget-object v5, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v6, v5, v4

    add-long/2addr v0, v6

    .line 274
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 277
    .end local v4    # "j":I
    :cond_2
    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr v0, v4

    .line 278
    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v6, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v4, v6

    .line 279
    .local v4, "adGroupResumePositionUs":J
    sub-long v6, p0, v0

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    .line 281
    iget-wide v6, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    sub-long v8, p0, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    return-wide v6

    .line 268
    .end local v3    # "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    .end local v4    # "adGroupResumePositionUs":J
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v2    # "i":I
    :cond_4
    :goto_2
    sub-long v2, p0, v0

    return-wide v2
.end method

.method public static getStreamPositionUs(JLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/AdPlaybackState;)J
    .locals 2
    .param p0, "positionUs"    # J
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;

    .line 129
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v1, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {p0, p1, v0, v1, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForAd(JIILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v0

    goto :goto_0

    .line 132
    :cond_0
    iget v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-static {p0, p1, v0, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v0

    .line 129
    :goto_0
    return-wide v0
.end method

.method public static getStreamPositionUs(Landroidx/media3/common/Player;Ljava/lang/Object;)J
    .locals 8
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "adsId"    # Ljava/lang/Object;

    .line 96
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 97
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    .line 98
    return-wide v2

    .line 100
    :cond_0
    nop

    .line 101
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v1

    new-instance v4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {v0, v1, v4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    .line 102
    .local v1, "period":Landroidx/media3/common/Timeline$Period;
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->getAdsId()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 103
    return-wide v2

    .line 105
    :cond_1
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v2

    .line 107
    .local v2, "adGroupIndex":I
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v3

    .line 108
    .local v3, "adIndexInAdGroup":I
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    .line 109
    .local v4, "adPositionUs":J
    iget-object v6, v1, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-static {v4, v5, v2, v3, v6}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForAd(JIILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v6

    return-wide v6

    .line 112
    .end local v2    # "adGroupIndex":I
    .end local v3    # "adIndexInAdGroup":I
    .end local v4    # "adPositionUs":J
    :cond_2
    nop

    .line 113
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 114
    .local v2, "periodPositionUs":J
    const/4 v4, -0x1

    iget-object v5, v1, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-static {v2, v3, v4, v5}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static getStreamPositionUsForAd(JIILandroidx/media3/common/AdPlaybackState;)J
    .locals 7
    .param p0, "positionUs"    # J
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;

    .line 167
    invoke-virtual {p4, p2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 168
    .local v0, "currentAdGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-wide v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    add-long/2addr p0, v1

    .line 169
    iget v1, p4, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 170
    invoke-virtual {p4, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 171
    .local v2, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-static {p4, v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 172
    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v5, v4, v3

    add-long/2addr p0, v5

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    .end local v3    # "j":I
    :cond_0
    iget-wide v3, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr p0, v3

    .line 169
    .end local v2    # "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_1
    invoke-static {p4, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result v1

    if-ge p3, v1, :cond_2

    .line 177
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p3, :cond_2

    .line 178
    iget-object v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v3, v2, v1

    add-long/2addr p0, v3

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    .end local v1    # "i":I
    :cond_2
    return-wide p0
.end method

.method public static getStreamPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J
    .locals 10
    .param p0, "positionUs"    # J
    .param p2, "nextAdGroupIndex"    # I
    .param p3, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;

    .line 227
    const-wide/16 v0, 0x0

    .line 228
    .local v0, "totalAdDurationBeforePositionUs":J
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 229
    iget p2, p3, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    .line 231
    :cond_0
    iget v2, p3, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 232
    invoke-virtual {p3, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 233
    .local v3, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v4, v4, p0

    if-lez v4, :cond_1

    .line 234
    goto :goto_2

    .line 236
    :cond_1
    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    add-long/2addr v4, v0

    .line 237
    .local v4, "adGroupStreamStartPositionUs":J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-static {p3, v2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 238
    iget-object v7, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v8, v7, v6

    add-long/2addr v0, v8

    .line 237
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 240
    .end local v6    # "j":I
    :cond_2
    iget-wide v6, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr v0, v6

    .line 241
    iget-wide v6, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v8, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v6, v8

    .line 242
    .local v6, "adGroupResumePositionUs":J
    cmp-long v8, v6, p0

    if-lez v8, :cond_3

    .line 244
    add-long v8, p0, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    return-wide v8

    .line 231
    .end local v3    # "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    .end local v4    # "adGroupStreamStartPositionUs":J
    .end local v6    # "adGroupResumePositionUs":J
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "i":I
    :cond_4
    :goto_2
    add-long v2, p0, v0

    return-wide v2
.end method
