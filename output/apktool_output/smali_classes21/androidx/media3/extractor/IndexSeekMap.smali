.class public final Landroidx/media3/extractor/IndexSeekMap;
.super Ljava/lang/Object;
.source "IndexSeekMap.java"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field private durationUs:J

.field private final positions:Landroidx/media3/common/util/LongArray;

.field private final timesUs:Landroidx/media3/common/util/LongArray;


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 5
    .param p1, "positions"    # [J
    .param p2, "timesUs"    # [J
    .param p3, "durationUs"    # J

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 47
    array-length v0, p2

    .line 48
    .local v0, "length":I
    if-lez v0, :cond_1

    aget-wide v1, p2, v2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 50
    new-instance v1, Landroidx/media3/common/util/LongArray;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Landroidx/media3/common/util/LongArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:Landroidx/media3/common/util/LongArray;

    .line 51
    new-instance v1, Landroidx/media3/common/util/LongArray;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Landroidx/media3/common/util/LongArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    .line 52
    iget-object v1, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 53
    iget-object v1, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/util/LongArray;->add(J)V

    goto :goto_1

    .line 55
    :cond_1
    new-instance v1, Landroidx/media3/common/util/LongArray;

    invoke-direct {v1, v0}, Landroidx/media3/common/util/LongArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:Landroidx/media3/common/util/LongArray;

    .line 56
    new-instance v1, Landroidx/media3/common/util/LongArray;

    invoke-direct {v1, v0}, Landroidx/media3/common/util/LongArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    .line 58
    :goto_1
    iget-object v1, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v1, p1}, Landroidx/media3/common/util/LongArray;->addAll([J)V

    .line 59
    iget-object v1, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v1, p2}, Landroidx/media3/common/util/LongArray;->addAll([J)V

    .line 60
    iput-wide p3, p0, Landroidx/media3/extractor/IndexSeekMap;->durationUs:J

    .line 61
    return-void
.end method


# virtual methods
.method public addSeekPoint(JJ)V
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "position"    # J

    .line 99
    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 101
    iget-object v2, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 102
    iget-object v2, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 104
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v0, p3, p4}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 105
    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 106
    return-void
.end method

.method public getDurationUs()J
    .locals 2

    .line 70
    iget-wide v0, p0, Landroidx/media3/extractor/IndexSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 7
    .param p1, "timeUs"    # J

    .line 75
    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object v1, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    .line 79
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor(Landroidx/media3/common/util/LongArray;JZZ)I

    move-result v0

    .line 80
    .local v0, "targetIndex":I
    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    iget-object v3, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v3, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object v5, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v5, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 81
    .local v2, "leftSeekPoint":Landroidx/media3/extractor/SeekPoint;
    iget-wide v3, v2, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    iget-object v3, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    add-int/lit8 v4, v0, 0x1

    .line 85
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object v5, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:Landroidx/media3/common/util/LongArray;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 86
    .local v1, "rightSeekPoint":Landroidx/media3/extractor/SeekPoint;
    new-instance v3, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v2, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v3

    .line 82
    .end local v1    # "rightSeekPoint":Landroidx/media3/extractor/SeekPoint;
    :cond_2
    :goto_0
    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v1
.end method

.method public getTimeUs(J)J
    .locals 3
    .param p1, "position"    # J

    .line 116
    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 119
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:Landroidx/media3/common/util/LongArray;

    .line 120
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor(Landroidx/media3/common/util/LongArray;JZZ)I

    move-result v0

    .line 122
    .local v0, "targetIndex":I
    iget-object v1, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public isSeekable()Z
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTimeUsInIndex(JJ)Z
    .locals 6
    .param p1, "timeUs"    # J
    .param p3, "minTimeBetweenPointsUs"    # J

    .line 137
    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    return v1

    .line 140
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    iget-object v2, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v4

    sub-long v4, p1, v4

    cmp-long v0, v4, p3

    if-gez v0, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public setDurationUs(J)V
    .locals 0
    .param p1, "durationUs"    # J

    .line 145
    iput-wide p1, p0, Landroidx/media3/extractor/IndexSeekMap;->durationUs:J

    .line 146
    return-void
.end method
