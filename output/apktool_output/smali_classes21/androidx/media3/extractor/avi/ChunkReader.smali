.class final Landroidx/media3/extractor/avi/ChunkReader;
.super Ljava/lang/Object;
.source "ChunkReader.java"


# static fields
.field private static final CHUNK_TYPE_AUDIO:I = 0x62770000

.field private static final CHUNK_TYPE_VIDEO_COMPRESSED:I = 0x63640000

.field private static final CHUNK_TYPE_VIDEO_UNCOMPRESSED:I = 0x62640000

.field private static final INITIAL_INDEX_SIZE:I = 0x200


# instance fields
.field private final alternativeChunkId:I

.field private bytesRemainingInCurrentChunk:I

.field private chunkCount:I

.field private final chunkId:I

.field private currentChunkIndex:I

.field private currentChunkSize:I

.field private final durationUs:J

.field private firstIndexChunkOffset:J

.field private indexChunkCount:I

.field private indexSize:I

.field private keyFrameIndices:[I

.field private keyFrameOffsets:[J

.field private final streamHeaderChunk:Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

.field private final trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(ILandroidx/media3/extractor/avi/AviStreamHeaderChunk;Landroidx/media3/extractor/TrackOutput;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "streamHeaderChunk"    # Landroidx/media3/extractor/avi/AviStreamHeaderChunk;
    .param p3, "trackOutput"    # Landroidx/media3/extractor/TrackOutput;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Landroidx/media3/extractor/avi/ChunkReader;->streamHeaderChunk:Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    .line 82
    invoke-virtual {p2}, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->getTrackType()I

    move-result v0

    .line 83
    .local v0, "trackType":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 85
    if-ne v0, v1, :cond_2

    const/high16 v2, 0x63640000

    goto :goto_1

    :cond_2
    const/high16 v2, 0x62770000

    .line 86
    .local v2, "chunkType":I
    :goto_1
    invoke-static {p1, v2}, Landroidx/media3/extractor/avi/ChunkReader;->getChunkIdFourCc(II)I

    move-result v3

    iput v3, p0, Landroidx/media3/extractor/avi/ChunkReader;->chunkId:I

    .line 87
    invoke-virtual {p2}, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/extractor/avi/ChunkReader;->durationUs:J

    .line 88
    iput-object p3, p0, Landroidx/media3/extractor/avi/ChunkReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 89
    nop

    .line 90
    if-ne v0, v1, :cond_3

    const/high16 v1, 0x62640000

    invoke-static {p1, v1}, Landroidx/media3/extractor/avi/ChunkReader;->getChunkIdFourCc(II)I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    iput v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->alternativeChunkId:I

    .line 91
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroidx/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    .line 92
    const/16 v1, 0x200

    new-array v3, v1, [J

    iput-object v3, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 93
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 94
    iget v1, p2, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->length:I

    iput v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->chunkCount:I

    .line 95
    return-void
.end method

.method private static getChunkIdFourCc(II)I
    .locals 4
    .param p0, "streamId"    # I
    .param p1, "chunkType"    # I

    .line 224
    div-int/lit8 v0, p0, 0xa

    .line 225
    .local v0, "tens":I
    rem-int/lit8 v1, p0, 0xa

    .line 226
    .local v1, "ones":I
    add-int/lit8 v2, v1, 0x30

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v0, 0x30

    or-int/2addr v2, v3

    or-int/2addr v2, p1

    return v2
.end method

.method private getChunkTimestampUs(I)J
    .locals 4
    .param p1, "chunkIndex"    # I

    .line 215
    iget-wide v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->durationUs:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->chunkCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getSeekPoint(I)Landroidx/media3/extractor/SeekPoint;
    .locals 6
    .param p1, "keyFrameIndex"    # I

    .line 219
    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v1, v1, p1

    int-to-long v1, v1

    .line 220
    invoke-virtual {p0}, Landroidx/media3/extractor/avi/ChunkReader;->getFrameDurationUs()J

    move-result-wide v3

    mul-long/2addr v1, v3

    iget-object v3, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    aget-wide v4, v3, p1

    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 219
    return-object v0
.end method


# virtual methods
.method public advanceCurrentChunk()V
    .locals 1

    .line 114
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    .line 115
    return-void
.end method

.method public appendIndexChunk(JZ)V
    .locals 4
    .param p1, "offset"    # J
    .param p3, "isKeyFrame"    # Z

    .line 98
    iget-wide v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 99
    iput-wide p1, p0, Landroidx/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    .line 101
    :cond_0
    if-eqz p3, :cond_2

    .line 102
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 104
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 106
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    aput-wide p1, v0, v1

    .line 107
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    iget v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    aput v2, v0, v1

    .line 108
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    .line 110
    :cond_2
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    .line 111
    return-void
.end method

.method public commitIndex()V
    .locals 2

    .line 126
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 127
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 128
    invoke-virtual {p0}, Landroidx/media3/extractor/avi/ChunkReader;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->streamHeaderChunk:Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    iget v0, v0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->sampleSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    if-lez v0, :cond_0

    .line 133
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->chunkCount:I

    .line 135
    :cond_0
    return-void
.end method

.method public getCurrentChunkTimestampUs()J
    .locals 2

    .line 118
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    invoke-direct {p0, v0}, Landroidx/media3/extractor/avi/ChunkReader;->getChunkTimestampUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrameDurationUs()J
    .locals 2

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/extractor/avi/ChunkReader;->getChunkTimestampUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 6
    .param p1, "timeUs"    # J

    .line 193
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Landroidx/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/extractor/avi/ChunkReader;->getFrameDurationUs()J

    move-result-wide v0

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 199
    .local v0, "targetFrameIndex":I
    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 200
    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result v1

    .line 202
    .local v1, "keyFrameIndex":I
    iget-object v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_1

    .line 203
    new-instance v2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v1}, Landroidx/media3/extractor/avi/ChunkReader;->getSeekPoint(I)Landroidx/media3/extractor/SeekPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v2

    .line 206
    :cond_1
    invoke-direct {p0, v1}, Landroidx/media3/extractor/avi/ChunkReader;->getSeekPoint(I)Landroidx/media3/extractor/SeekPoint;

    move-result-object v2

    .line 207
    .local v2, "precedingKeyFrameSeekPoint":Landroidx/media3/extractor/SeekPoint;
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 208
    new-instance v3, Landroidx/media3/extractor/SeekMap$SeekPoints;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Landroidx/media3/extractor/avi/ChunkReader;->getSeekPoint(I)Landroidx/media3/extractor/SeekPoint;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v3

    .line 210
    :cond_2
    new-instance v3, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v3
.end method

.method public handlesChunkId(I)Z
    .locals 1
    .param p1, "chunkId"    # I

    .line 138
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->chunkId:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->alternativeChunkId:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAudio()Z
    .locals 2

    .line 150
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->chunkId:I

    const/high16 v1, 0x62770000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentFrameAKeyFrame()Z
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideo()Z
    .locals 2

    .line 146
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->chunkId:I

    const/high16 v1, 0x63640000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onChunkData(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 11
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    .line 165
    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    .line 166
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 167
    .local v3, "done":Z
    :cond_0
    if-eqz v3, :cond_2

    .line 168
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    if-lez v0, :cond_1

    .line 169
    iget-object v4, p0, Landroidx/media3/extractor/avi/ChunkReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 170
    invoke-virtual {p0}, Landroidx/media3/extractor/avi/ChunkReader;->getCurrentChunkTimestampUs()J

    move-result-wide v5

    .line 171
    invoke-virtual {p0}, Landroidx/media3/extractor/avi/ChunkReader;->isCurrentFrameAKeyFrame()Z

    move-result v7

    iget v8, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    .line 169
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/extractor/avi/ChunkReader;->advanceCurrentChunk()V

    .line 178
    :cond_2
    return v3
.end method

.method public onChunkStart(I)V
    .locals 0
    .param p1, "size"    # I

    .line 155
    iput p1, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    .line 156
    iput p1, p0, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    .line 157
    return-void
.end method

.method public seekToPosition(J)V
    .locals 2
    .param p1, "position"    # J

    .line 182
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 186
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 188
    .local v0, "index":I
    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    .line 190
    .end local v0    # "index":I
    :goto_0
    return-void
.end method
