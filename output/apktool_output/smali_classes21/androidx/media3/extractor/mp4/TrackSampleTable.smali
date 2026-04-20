.class public final Landroidx/media3/extractor/mp4/TrackSampleTable;
.super Ljava/lang/Object;
.source "TrackSampleTable.java"


# instance fields
.field public final durationUs:J

.field public final flags:[I

.field public final hasOnlySyncSamples:Z

.field public final maximumSize:I

.field public final offsets:[J

.field public final sampleCount:I

.field public final sizes:[I

.field public final syncSampleIndices:[I

.field public final timestampsUs:[J

.field public final track:Landroidx/media3/extractor/mp4/Track;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V
    .locals 4
    .param p1, "track"    # Landroidx/media3/extractor/mp4/Track;
    .param p2, "offsets"    # [J
    .param p3, "sizes"    # [I
    .param p4, "maximumSize"    # I
    .param p5, "timestampsUs"    # [J
    .param p6, "flags"    # [I
    .param p7, "syncSampleIndices"    # [I
    .param p8, "hasOnlySyncSamples"    # Z
    .param p9, "durationUs"    # J
    .param p11, "sampleCount"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    array-length v0, p3

    array-length v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 73
    array-length v0, p2

    array-length v1, p5

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 74
    array-length v0, p6

    array-length v1, p5

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 76
    iput-object p1, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 77
    iput-object p2, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    .line 78
    iput-object p3, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    .line 79
    iput p4, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    .line 80
    iput-object p5, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    .line 81
    iput-object p6, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    .line 82
    iput-object p7, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    .line 83
    iput-boolean p8, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->hasOnlySyncSamples:Z

    .line 84
    iput-wide p9, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 85
    iput p11, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    .line 86
    array-length v0, p6

    if-lez v0, :cond_3

    .line 87
    array-length v0, p6

    sub-int/2addr v0, v3

    aget v1, p6, v0

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    aput v1, p6, v0

    .line 89
    :cond_3
    return-void
.end method


# virtual methods
.method public getIndexOfEarlierOrEqualSynchronizationSample(J)I
    .locals 8
    .param p1, "timeUs"    # J

    .line 99
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->hasOnlySyncSamples:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 105
    .local v0, "low":I
    iget-object v2, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 106
    .local v2, "high":I
    const/4 v1, -0x1

    .line 108
    .local v1, "index":I
    :goto_0
    if-gt v0, v2, :cond_2

    .line 109
    sub-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    .line 110
    .local v3, "mid":I
    iget-object v4, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget-object v5, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    aget v5, v5, v3

    aget-wide v5, v4, v5

    .line 112
    .local v5, "currentTimestamp":J
    cmp-long v4, v5, p1

    if-gtz v4, :cond_1

    .line 113
    move v1, v3

    .line 114
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 116
    :cond_1
    add-int/lit8 v2, v3, -0x1

    .line 118
    .end local v3    # "mid":I
    .end local v5    # "currentTimestamp":J
    :goto_1
    goto :goto_0

    .line 120
    :cond_2
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 121
    return v3

    .line 124
    :cond_3
    iget-object v3, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget-object v4, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    aget v4, v4, v1

    aget-wide v4, v3, v4

    .line 126
    .local v4, "targetTimestamp":J
    cmp-long v3, v4, p1

    if-nez v3, :cond_4

    .line 127
    :goto_2
    if-lez v1, :cond_4

    iget-object v3, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget-object v6, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    aget-wide v6, v3, v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_4

    .line 128
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 132
    :cond_4
    iget-object v3, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    aget v3, v3, v1

    return v3
.end method

.method public getIndexOfLaterOrEqualSynchronizationSample(J)I
    .locals 9
    .param p1, "timeUs"    # J

    .line 143
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->hasOnlySyncSamples:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    return v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 149
    .local v0, "low":I
    iget-object v2, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 150
    .local v2, "high":I
    const/4 v3, -0x1

    .line 152
    .local v3, "index":I
    :goto_0
    if-gt v0, v2, :cond_2

    .line 153
    sub-int v4, v2, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    .line 154
    .local v4, "mid":I
    iget-object v5, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget-object v6, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    aget v6, v6, v4

    aget-wide v6, v5, v6

    .line 156
    .local v6, "currentTimestamp":J
    cmp-long v5, v6, p1

    if-ltz v5, :cond_1

    .line 157
    move v3, v4

    .line 158
    add-int/lit8 v2, v4, -0x1

    goto :goto_1

    .line 160
    :cond_1
    add-int/lit8 v0, v4, 0x1

    .line 162
    .end local v4    # "mid":I
    .end local v6    # "currentTimestamp":J
    :goto_1
    goto :goto_0

    .line 164
    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 165
    return v4

    .line 168
    :cond_3
    iget-object v4, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget-object v5, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    aget v5, v5, v3

    aget-wide v5, v4, v5

    .line 170
    .local v5, "targetTimestamp":J
    cmp-long v4, v5, p1

    if-nez v4, :cond_4

    .line 171
    :goto_2
    iget-object v4, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    array-length v4, v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget-object v7, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    aget-wide v7, v4, v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_4

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 177
    :cond_4
    iget-object v1, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    aget v1, v1, v3

    return v1
.end method
