.class final Landroidx/media3/exoplayer/text/ReplacingCuesResolver;
.super Ljava/lang/Object;
.source "ReplacingCuesResolver.java"

# interfaces
.implements Landroidx/media3/exoplayer/text/CuesResolver;


# instance fields
.field private final cuesWithTimingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/extractor/text/CuesWithTiming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method private getIndexOfCuesStartingAfter(J)I
    .locals 3
    .param p1, "timeUs"    # J

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 161
    iget-object v2, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 156
    if-ge v0, v1, :cond_1

    .line 157
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v1, v1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 158
    return v0

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addCues(Landroidx/media3/extractor/text/CuesWithTiming;J)Z
    .locals 7
    .param p1, "cues"    # Landroidx/media3/extractor/text/CuesWithTiming;
    .param p2, "currentPositionUs"    # J

    .line 49
    iget-wide v0, p1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 50
    iget-wide v5, p1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v0, v5, p2

    if-gtz v0, :cond_2

    iget-wide v5, p1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    iget-wide v2, p1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v1

    .line 53
    .local v0, "cuesAreShownAtCurrentTime":Z
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 54
    iget-wide v3, p1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    iget-object v5, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v5, v5, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v3, v3, v5

    .line 57
    iget-object v4, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 54
    if-ltz v3, :cond_3

    .line 55
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v4, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 56
    return v0

    .line 57
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v3, v3, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v3, v3, p2

    if-gtz v3, :cond_4

    .line 60
    const/4 v0, 0x0

    .line 53
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 63
    .end local v2    # "i":I
    :cond_5
    iget-object v2, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 64
    return v0
.end method

.method public clear()V
    .locals 1

    .line 146
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    return-void
.end method

.method public discardCuesBeforeTimeUs(J)V
    .locals 6
    .param p1, "timeUs"    # J

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->getIndexOfCuesStartingAfter(J)I

    move-result v0

    .line 83
    .local v0, "indexToDiscardTo":I
    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 88
    .local v1, "lastCueToDiscard":Landroidx/media3/extractor/text/CuesWithTiming;
    iget-wide v2, v1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, v1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v2, v2, p1

    if-ltz v2, :cond_2

    .line 89
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 91
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 92
    return-void
.end method

.method public getCuesAtTimeUs(J)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->getIndexOfCuesStartingAfter(J)I

    move-result v0

    .line 70
    .local v0, "indexStartingAfterTimeUs":I
    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 74
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 75
    .local v1, "cues":Landroidx/media3/extractor/text/CuesWithTiming;
    iget-wide v2, v1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, v1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_1

    .line 76
    :cond_2
    :goto_0
    iget-object v2, v1, Landroidx/media3/extractor/text/CuesWithTiming;->cues:Lcom/google/common/collect/ImmutableList;

    .line 75
    :goto_1
    return-object v2
.end method

.method public getNextCueChangeTimeUs(J)J
    .locals 9
    .param p1, "timeUs"    # J

    .line 120
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    .line 121
    return-wide v1

    .line 123
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v4, v0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    .line 124
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v0, v0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    return-wide v0

    .line 127
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 138
    iget-object v4, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 127
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v3, :cond_4

    .line 128
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 129
    .local v3, "cues":Landroidx/media3/extractor/text/CuesWithTiming;
    iget-wide v7, v3, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v4, p1, v7

    if-gez v4, :cond_3

    .line 130
    iget-object v1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 133
    .local v1, "previousCues":Landroidx/media3/extractor/text/CuesWithTiming;
    iget-wide v7, v1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v2, v7, v5

    if-eqz v2, :cond_2

    iget-wide v4, v1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_2

    iget-wide v4, v1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    iget-wide v6, v3, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    .line 134
    iget-wide v4, v1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    goto :goto_1

    .line 135
    :cond_2
    iget-wide v4, v3, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 131
    :goto_1
    return-wide v4

    .line 127
    .end local v1    # "previousCues":Landroidx/media3/extractor/text/CuesWithTiming;
    .end local v3    # "cues":Landroidx/media3/extractor/text/CuesWithTiming;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_4
    invoke-static {v4}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 139
    .local v0, "lastCues":Landroidx/media3/extractor/text/CuesWithTiming;
    iget-wide v3, v0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    iget-wide v3, v0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    .line 140
    iget-wide v1, v0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    goto :goto_2

    .line 141
    :cond_5
    nop

    .line 139
    :goto_2
    return-wide v1
.end method

.method public getPreviousCueChangeTimeUs(J)J
    .locals 8
    .param p1, "timeUs"    # J

    .line 96
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v3, v0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_4

    .line 100
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 112
    iget-object v4, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 100
    if-ge v0, v3, :cond_4

    .line 101
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v3, v3, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 102
    .local v3, "nextCuesStartTimeUs":J
    cmp-long v5, p1, v3

    if-nez v5, :cond_1

    .line 103
    return-wide v3

    .line 105
    :cond_1
    cmp-long v5, p1, v3

    if-gez v5, :cond_3

    .line 106
    iget-object v5, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 107
    .local v5, "cues":Landroidx/media3/extractor/text/CuesWithTiming;
    iget-wide v6, v5, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v1, v6, v1

    if-eqz v1, :cond_2

    iget-wide v1, v5, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v1, v1, p1

    if-gtz v1, :cond_2

    .line 108
    iget-wide v1, v5, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    goto :goto_1

    .line 109
    :cond_2
    iget-wide v1, v5, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 107
    :goto_1
    return-wide v1

    .line 100
    .end local v3    # "nextCuesStartTimeUs":J
    .end local v5    # "cues":Landroidx/media3/extractor/text/CuesWithTiming;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    :cond_4
    invoke-static {v4}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 113
    .local v0, "lastCues":Landroidx/media3/extractor/text/CuesWithTiming;
    iget-wide v3, v0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_6

    iget-wide v1, v0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_5

    goto :goto_2

    .line 115
    :cond_5
    iget-wide v1, v0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    goto :goto_3

    .line 114
    :cond_6
    :goto_2
    iget-wide v1, v0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 113
    :goto_3
    return-wide v1

    .line 97
    .end local v0    # "lastCues":Landroidx/media3/extractor/text/CuesWithTiming;
    :cond_7
    :goto_4
    return-wide v1
.end method
