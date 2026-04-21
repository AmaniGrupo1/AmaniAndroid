.class final Landroidx/media3/extractor/wav/WavSeekMap;
.super Ljava/lang/Object;
.source "WavSeekMap.java"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field private final blockCount:J

.field private final durationUs:J

.field private final firstBlockPosition:J

.field private final framesPerBlock:I

.field private final wavFormat:Landroidx/media3/extractor/wav/WavFormat;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/wav/WavFormat;IJJ)V
    .locals 4
    .param p1, "wavFormat"    # Landroidx/media3/extractor/wav/WavFormat;
    .param p2, "framesPerBlock"    # I
    .param p3, "dataStartPosition"    # J
    .param p5, "dataEndPosition"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    .line 34
    iput p2, p0, Landroidx/media3/extractor/wav/WavSeekMap;->framesPerBlock:I

    .line 35
    iput-wide p3, p0, Landroidx/media3/extractor/wav/WavSeekMap;->firstBlockPosition:J

    .line 36
    sub-long v0, p5, p3

    iget v2, p1, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->blockCount:J

    .line 37
    iget-wide v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->blockCount:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->durationUs:J

    .line 38
    return-void
.end method

.method private blockIndexToTimeUs(J)J
    .locals 8
    .param p1, "blockIndex"    # J

    .line 71
    iget v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->framesPerBlock:I

    int-to-long v0, v0

    mul-long v2, p1, v0

    iget-object v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v0, v0, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v6, v0

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 47
    iget-wide v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 16
    .param p1, "timeUs"    # J

    .line 53
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v1, v1, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v1, v1

    mul-long v1, v1, p1

    iget v3, v0, Landroidx/media3/extractor/wav/WavSeekMap;->framesPerBlock:I

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    div-long v5, v1, v3

    .line 54
    .local v5, "blockIndex":J
    iget-wide v1, v0, Landroidx/media3/extractor/wav/WavSeekMap;->blockCount:J

    const-wide/16 v3, 0x1

    sub-long v9, v1, v3

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v1

    .line 56
    .end local v5    # "blockIndex":J
    .local v1, "blockIndex":J
    iget-wide v5, v0, Landroidx/media3/extractor/wav/WavSeekMap;->firstBlockPosition:J

    iget-object v7, v0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v7, v7, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    int-to-long v7, v7

    mul-long/2addr v7, v1

    add-long/2addr v5, v7

    .line 57
    .local v5, "seekPosition":J
    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide v7

    .line 58
    .local v7, "seekTimeUs":J
    new-instance v9, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v9, v7, v8, v5, v6}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 59
    .local v9, "seekPoint":Landroidx/media3/extractor/SeekPoint;
    cmp-long v10, v7, p1

    if-gez v10, :cond_1

    iget-wide v10, v0, Landroidx/media3/extractor/wav/WavSeekMap;->blockCount:J

    sub-long/2addr v10, v3

    cmp-long v10, v1, v10

    if-nez v10, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    add-long/2addr v3, v1

    .line 63
    .local v3, "secondBlockIndex":J
    iget-wide v10, v0, Landroidx/media3/extractor/wav/WavSeekMap;->firstBlockPosition:J

    iget-object v12, v0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v12, v12, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    int-to-long v12, v12

    mul-long/2addr v12, v3

    add-long/2addr v10, v12

    .line 64
    .local v10, "secondSeekPosition":J
    invoke-direct {v0, v3, v4}, Landroidx/media3/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide v12

    .line 65
    .local v12, "secondSeekTimeUs":J
    new-instance v14, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v14, v12, v13, v10, v11}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 66
    .local v14, "secondSeekPoint":Landroidx/media3/extractor/SeekPoint;
    new-instance v15, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v15, v9, v14}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v15

    .line 60
    .end local v3    # "secondBlockIndex":J
    .end local v10    # "secondSeekPosition":J
    .end local v12    # "secondSeekTimeUs":J
    .end local v14    # "secondSeekPoint":Landroidx/media3/extractor/SeekPoint;
    :cond_1
    :goto_0
    new-instance v3, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v9}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v3
.end method

.method public isSeekable()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method
