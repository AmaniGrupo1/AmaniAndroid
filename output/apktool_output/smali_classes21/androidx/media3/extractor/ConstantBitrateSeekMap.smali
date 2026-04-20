.class public Landroidx/media3/extractor/ConstantBitrateSeekMap;
.super Ljava/lang/Object;
.source "ConstantBitrateSeekMap.java"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field private final allowSeeksIfLengthUnknown:Z

.field private final bitrate:I

.field private final dataSize:J

.field private final durationUs:J

.field private final firstFrameBytePosition:J

.field private final frameSize:I

.field private final inputLength:J

.field private final isEstimated:Z


# direct methods
.method public constructor <init>(JJII)V
    .locals 8
    .param p1, "inputLength"    # J
    .param p3, "firstFrameBytePosition"    # J
    .param p5, "bitrate"    # I
    .param p6, "frameSize"    # I

    .line 52
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .end local p1    # "inputLength":J
    .end local p3    # "firstFrameBytePosition":J
    .end local p5    # "bitrate":I
    .end local p6    # "frameSize":I
    .local v1, "inputLength":J
    .local v3, "firstFrameBytePosition":J
    .local v5, "bitrate":I
    .local v6, "frameSize":I
    invoke-direct/range {v0 .. v7}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    .line 58
    return-void
.end method

.method public constructor <init>(JJIIZ)V
    .locals 9
    .param p1, "inputLength"    # J
    .param p3, "firstFrameBytePosition"    # J
    .param p5, "bitrate"    # I
    .param p6, "frameSize"    # I
    .param p7, "allowSeeksIfLengthUnknown"    # Z

    .line 77
    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(JJIIZZ)V

    .line 84
    return-void
.end method

.method protected constructor <init>(JJIIZZ)V
    .locals 3
    .param p1, "inputLength"    # J
    .param p3, "firstFrameBytePosition"    # J
    .param p5, "bitrate"    # I
    .param p6, "frameSize"    # I
    .param p7, "allowSeeksIfLengthUnknown"    # Z
    .param p8, "isEstimated"    # Z

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-wide p1, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->inputLength:J

    .line 106
    iput-wide p3, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    .line 107
    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p6

    :goto_0
    iput v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->frameSize:I

    .line 108
    iput p5, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->bitrate:I

    .line 109
    iput-boolean p7, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    .line 110
    iput-boolean p8, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->isEstimated:Z

    .line 112
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 113
    iput-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->dataSize:J

    .line 114
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->durationUs:J

    goto :goto_1

    .line 116
    :cond_1
    sub-long v0, p1, p3

    iput-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->dataSize:J

    .line 117
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/media3/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(JJI)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->durationUs:J

    .line 119
    :goto_1
    return-void
.end method

.method private getFramePositionForTimeUs(J)J
    .locals 6
    .param p1, "timeUs"    # J

    .line 187
    iget v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->bitrate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0x7a1200

    div-long/2addr v0, v2

    .line 189
    .local v0, "positionOffset":J
    iget v2, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v2, v2

    div-long v2, v0, v2

    iget v4, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 190
    .end local v0    # "positionOffset":J
    .local v2, "positionOffset":J
    iget-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 191
    iget-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->dataSize:J

    iget v4, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 193
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 194
    .end local v2    # "positionOffset":J
    .restart local v0    # "positionOffset":J
    iget-wide v2, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private static getTimeUsAtPosition(JJI)J
    .locals 4
    .param p0, "position"    # J
    .param p2, "firstFrameBytePosition"    # J
    .param p4, "bitrate"    # I

    .line 180
    const-wide/16 v0, 0x0

    sub-long v2, p0, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    int-to-long v2, p4

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 151
    iget-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 11
    .param p1, "timeUs"    # J

    .line 128
    iget-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    .line 131
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/ConstantBitrateSeekMap;->getFramePositionForTimeUs(J)J

    move-result-wide v0

    .line 132
    .local v0, "seekFramePosition":J
    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide v4

    .line 133
    .local v4, "seekTimeUs":J
    new-instance v6, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v6, v4, v5, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 137
    .local v6, "seekPoint":Landroidx/media3/extractor/SeekPoint;
    iget-wide v7, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->dataSize:J

    cmp-long v2, v7, v2

    if-eqz v2, :cond_2

    cmp-long v2, v4, p1

    if-gez v2, :cond_2

    iget v2, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget-wide v7, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->inputLength:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    iget v2, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 143
    .local v2, "secondSeekPosition":J
    invoke-virtual {p0, v2, v3}, Landroidx/media3/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide v7

    .line 144
    .local v7, "secondSeekTimeUs":J
    new-instance v9, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v9, v7, v8, v2, v3}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 145
    .local v9, "secondSeekPoint":Landroidx/media3/extractor/SeekPoint;
    new-instance v10, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v10, v6, v9}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v10

    .line 140
    .end local v2    # "secondSeekPosition":J
    .end local v7    # "secondSeekTimeUs":J
    .end local v9    # "secondSeekPoint":Landroidx/media3/extractor/SeekPoint;
    :cond_2
    :goto_0
    new-instance v2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v2, v6}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v2
.end method

.method public getTimeUsAtPosition(J)J
    .locals 3
    .param p1, "position"    # J

    .line 166
    iget-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    iget v2, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->bitrate:I

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/media3/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEstimated()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->isEstimated:Z

    return v0
.end method

.method public isSeekable()Z
    .locals 4

    .line 123
    iget-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    if-eqz v0, :cond_0

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
