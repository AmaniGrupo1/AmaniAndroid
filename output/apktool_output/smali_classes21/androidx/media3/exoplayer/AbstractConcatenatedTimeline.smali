.class public abstract Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.super Landroidx/media3/common/Timeline;
.source "AbstractConcatenatedTimeline.java"


# instance fields
.field private final childCount:I

.field private final isAtomic:Z

.field private final shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;


# direct methods
.method public constructor <init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 1
    .param p1, "isAtomic"    # Z
    .param p2, "shuffleOrder"    # Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 76
    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    .line 77
    iput-boolean p1, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->isAtomic:Z

    .line 78
    iput-object p2, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 79
    invoke-interface {p2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->childCount:I

    .line 80
    return-void
.end method

.method public static getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "concatenatedUid"    # Ljava/lang/Object;

    .line 54
    move-object v0, p0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public static getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "concatenatedUid"    # Ljava/lang/Object;

    .line 43
    move-object v0, p0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public static getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "childTimelineUid"    # Ljava/lang/Object;
    .param p1, "childPeriodOrWindowUid"    # Ljava/lang/Object;

    .line 65
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getNextChildIndex(IZ)I
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "shuffleModeEnabled"    # Z

    .line 320
    if-eqz p2, :cond_0

    .line 321
    iget-object v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getNextIndex(I)I

    move-result v0

    goto :goto_0

    .line 322
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 320
    :goto_0
    return v0
.end method

.method private getPreviousChildIndex(IZ)I
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "shuffleModeEnabled"    # Z

    .line 326
    if-eqz p2, :cond_0

    .line 327
    iget-object v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getPreviousIndex(I)I

    move-result v0

    goto :goto_0

    .line 328
    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 326
    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract getChildIndexByChildUid(Ljava/lang/Object;)I
.end method

.method protected abstract getChildIndexByPeriodIndex(I)I
.end method

.method protected abstract getChildIndexByWindowIndex(I)I
.end method

.method protected abstract getChildUidByChildIndex(I)Ljava/lang/Object;
.end method

.method protected abstract getFirstPeriodIndexByChildIndex(I)I
.end method

.method public getFirstWindowIndex(Z)I
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 178
    iget v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 179
    return v1

    .line 181
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->isAtomic:Z

    if-eqz v0, :cond_1

    .line 182
    const/4 p1, 0x0

    .line 185
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getFirstIndex()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 186
    .local v0, "firstChildIndex":I
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v0

    .line 188
    if-ne v0, v1, :cond_3

    .line 190
    return v1

    .line 193
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 194
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 193
    return v1
.end method

.method protected abstract getFirstWindowIndexByChildIndex(I)I
.end method

.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 5
    .param p1, "uid"    # Ljava/lang/Object;

    .line 244
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 245
    return v1

    .line 247
    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "childUid":Ljava/lang/Object;
    invoke-static {p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 249
    .local v2, "childPeriodUid":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v3

    .line 250
    .local v3, "childIndex":I
    if-ne v3, v1, :cond_1

    .line 251
    return v1

    .line 253
    :cond_1
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    .line 254
    .local v4, "periodIndexInChild":I
    if-ne v4, v1, :cond_2

    .line 255
    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v1

    add-int/2addr v1, v4

    .line 254
    :goto_0
    return v1
.end method

.method public getLastWindowIndex(Z)I
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 157
    iget v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 158
    return v1

    .line 160
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->isAtomic:Z

    if-eqz v0, :cond_1

    .line 161
    const/4 p1, 0x0

    .line 164
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLastIndex()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 v0, v0, -0x1

    .line 165
    .local v0, "lastChildIndex":I
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v0

    .line 167
    if-ne v0, v1, :cond_3

    .line 169
    return v1

    .line 172
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 173
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 172
    return v1
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 7
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 85
    iget-boolean v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 88
    const/4 p3, 0x0

    .line 91
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 92
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v2

    .line 93
    .local v2, "firstWindowIndexInChild":I
    nop

    .line 94
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v3

    sub-int v4, p1, v2

    .line 97
    if-ne p2, v1, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    move v5, p2

    .line 95
    :goto_1
    invoke-virtual {v3, v4, v5, p3}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v3

    .line 99
    .local v3, "nextWindowIndexInChild":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 100
    add-int v1, v2, v3

    return v1

    .line 103
    :cond_3
    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v5

    .line 104
    .local v5, "nextChildIndex":I
    :goto_2
    if-eq v5, v4, :cond_4

    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 105
    invoke-direct {p0, v5, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v5

    goto :goto_2

    .line 107
    :cond_4
    if-eq v5, v4, :cond_5

    .line 108
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 109
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 108
    return v1

    .line 112
    :cond_5
    if-ne p2, v1, :cond_6

    .line 113
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndex(Z)I

    move-result v1

    return v1

    .line 115
    :cond_6
    return v4
.end method

.method public final getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 5
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 229
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 230
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 231
    .local v1, "firstWindowIndexInChild":I
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 232
    .local v2, "firstPeriodIndexInChild":I
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v3

    sub-int v4, p1, v2

    .line 233
    invoke-virtual {v3, v4, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 234
    iget v3, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    add-int/2addr v3, v1

    iput v3, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 235
    if-eqz p3, :cond_0

    .line 236
    nop

    .line 237
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 239
    :cond_0
    return-object p2
.end method

.method public final getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .locals 5
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 217
    invoke-static {p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    .local v0, "childUid":Ljava/lang/Object;
    invoke-static {p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    .local v1, "childPeriodUid":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v2

    .line 220
    .local v2, "childIndex":I
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v3

    .line 221
    .local v3, "firstWindowIndexInChild":I
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v4

    invoke-virtual {v4, v1, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 222
    iget v4, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    add-int/2addr v4, v3

    iput v4, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 223
    iput-object p1, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 224
    return-object p2
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 7
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 121
    iget-boolean v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 124
    const/4 p3, 0x0

    .line 127
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 128
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v2

    .line 129
    .local v2, "firstWindowIndexInChild":I
    nop

    .line 130
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v3

    sub-int v4, p1, v2

    .line 133
    if-ne p2, v1, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    move v5, p2

    .line 131
    :goto_1
    invoke-virtual {v3, v4, v5, p3}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v3

    .line 135
    .local v3, "previousWindowIndexInChild":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 136
    add-int v1, v2, v3

    return v1

    .line 139
    :cond_3
    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v5

    .line 140
    .local v5, "previousChildIndex":I
    :goto_2
    if-eq v5, v4, :cond_4

    .line 141
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    invoke-direct {p0, v5, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v5

    goto :goto_2

    .line 144
    :cond_4
    if-eq v5, v4, :cond_5

    .line 145
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 146
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 145
    return v1

    .line 149
    :cond_5
    if-ne p2, v1, :cond_6

    .line 150
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getLastWindowIndex(Z)I

    move-result v1

    return v1

    .line 152
    :cond_6
    return v4
.end method

.method protected abstract getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;
.end method

.method public final getUidOfPeriod(I)Ljava/lang/Object;
    .locals 4
    .param p1, "periodIndex"    # I

    .line 261
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 262
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v1

    .line 263
    .local v1, "firstPeriodIndexInChild":I
    nop

    .line 264
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v2

    sub-int v3, p1, v1

    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    .line 265
    .local v2, "periodUidInChild":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public final getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 6
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 199
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 200
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 201
    .local v1, "firstWindowIndexInChild":I
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 202
    .local v2, "firstPeriodIndexInChild":I
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v3

    sub-int v4, p1, v1

    .line 203
    invoke-virtual {v3, v4, p2, p3, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 204
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v3

    .line 206
    .local v3, "childUid":Ljava/lang/Object;
    nop

    .line 207
    sget-object v4, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v5, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    move-object v4, v3

    goto :goto_0

    .line 209
    :cond_0
    iget-object v4, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    iput-object v4, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 210
    iget v4, p2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v4, v2

    iput v4, p2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 211
    iget v4, p2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v4, v2

    iput v4, p2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 212
    return-object p2
.end method
