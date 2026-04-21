.class final Landroidx/media3/exoplayer/MediaPeriodInfo;
.super Ljava/lang/Object;
.source "MediaPeriodInfo.java"


# instance fields
.field public final durationUs:J

.field public final endPositionUs:J

.field public final id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final isFinal:Z

.field public final isFollowedByTransitionToSameStream:Z

.field public final isLastInTimelinePeriod:Z

.field public final isLastInTimelineWindow:Z

.field public final isPrecededByTransitionFromSameStream:Z

.field public final liveStreamStartPositionProjectionUs:J

.field public final requestedContentPositionUs:J

.field public final startPositionUs:J


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJJZZZZZ)V
    .locals 16
    .param p1, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "startPositionUs"    # J
    .param p4, "liveStreamStartPositionProjectionUs"    # J
    .param p6, "requestedContentPositionUs"    # J
    .param p8, "endPositionUs"    # J
    .param p10, "durationUs"    # J
    .param p12, "isPrecededByTransitionFromSameStream"    # Z
    .param p13, "isFollowedByTransitionToSameStream"    # Z
    .param p14, "isLastInTimelinePeriod"    # Z
    .param p15, "isLastInTimelineWindow"    # Z
    .param p16, "isFinal"    # Z

    .line 105
    move-object/from16 v0, p0

    move/from16 v1, p13

    move/from16 v2, p14

    move/from16 v3, p15

    move/from16 v4, p16

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v6

    :goto_1
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 107
    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v7, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v6

    :goto_3
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 108
    if-eqz v1, :cond_4

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 111
    move-object/from16 v5, p1

    iput-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 112
    move-wide/from16 v6, p2

    iput-wide v6, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 113
    move-wide/from16 v8, p4

    iput-wide v8, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->liveStreamStartPositionProjectionUs:J

    .line 114
    move-wide/from16 v10, p6

    iput-wide v10, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 115
    move-wide/from16 v12, p8

    iput-wide v12, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    .line 116
    move-wide/from16 v14, p10

    iput-wide v14, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    .line 117
    move/from16 v5, p12

    iput-boolean v5, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    .line 118
    iput-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    .line 119
    iput-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    .line 120
    iput-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    .line 121
    iput-boolean v4, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    .line 122
    return-void
.end method


# virtual methods
.method public copyWithRequestedContentPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 19
    .param p1, "requestedContentPositionUs"    # J

    .line 152
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 153
    move-object v2, v0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v6, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->liveStreamStartPositionProjectionUs:J

    iget-wide v10, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    iget-wide v12, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-boolean v14, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    iget-boolean v15, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v8, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v9, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    move/from16 v16, v1

    move/from16 v17, v8

    move/from16 v18, v9

    move-wide/from16 v8, p1

    invoke-direct/range {v2 .. v18}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJJZZZZZ)V

    .line 152
    :goto_0
    return-object v2
.end method

.method public copyWithStartPositionUs(JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 19
    .param p1, "startPositionUs"    # J
    .param p3, "liveStreamStartPositionProjectionUs"    # J

    .line 131
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-wide v1, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->liveStreamStartPositionProjectionUs:J

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 132
    move-object v2, v0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v8, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v10, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    iget-wide v12, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-boolean v14, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    iget-boolean v15, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v4, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v5, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    move-wide/from16 v6, p3

    move/from16 v16, v1

    move/from16 v17, v4

    move/from16 v18, v5

    move-wide/from16 v4, p1

    invoke-direct/range {v2 .. v18}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJJZZZZZ)V

    .line 130
    :goto_0
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 170
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 171
    return v0

    .line 173
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 176
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 177
    .local v2, "that":Landroidx/media3/exoplayer/MediaPeriodInfo;
    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v5, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v5, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    iget-wide v5, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v5, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    iget-boolean v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    iget-boolean v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    iget-boolean v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 186
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 177
    :goto_0
    return v0

    .line 174
    .end local v2    # "that":Landroidx/media3/exoplayer/MediaPeriodInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 191
    const/16 v0, 0x11

    .line 192
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 193
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 194
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 195
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 196
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 197
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    add-int/2addr v0, v2

    .line 198
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    add-int/2addr v1, v2

    .line 199
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    add-int/2addr v0, v2

    .line 200
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    add-int/2addr v1, v2

    .line 201
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    add-int/2addr v0, v2

    .line 202
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
