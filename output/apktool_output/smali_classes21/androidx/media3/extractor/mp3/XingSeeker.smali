.class final Landroidx/media3/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "XingSeeker"


# instance fields
.field private final bitrate:I

.field private final dataEndPosition:J

.field private final dataSize:J

.field private final dataStartPosition:J

.field private final durationUs:J

.field private final tableOfContents:[J

.field private final xingFrameSize:I


# direct methods
.method private constructor <init>(JIJIJ[J)V
    .locals 3
    .param p1, "dataStartPosition"    # J
    .param p3, "xingFrameSize"    # I
    .param p4, "durationUs"    # J
    .param p6, "bitrate"    # I
    .param p7, "dataSize"    # J
    .param p9, "tableOfContents"    # [J

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    .line 79
    iput p3, p0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    .line 80
    iput-wide p4, p0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    .line 81
    iput p6, p0, Landroidx/media3/extractor/mp3/XingSeeker;->bitrate:I

    .line 82
    iput-wide p7, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    .line 83
    iput-object p9, p0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    .line 84
    const-wide/16 v0, -0x1

    cmp-long v2, p7, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-long v0, p1, p7

    :goto_0
    iput-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataEndPosition:J

    .line 85
    return-void
.end method

.method public static create(Landroidx/media3/extractor/mp3/XingFrame;J)Landroidx/media3/extractor/mp3/XingSeeker;
    .locals 10
    .param p0, "xingFrame"    # Landroidx/media3/extractor/mp3/XingFrame;
    .param p1, "position"    # J

    .line 42
    invoke-virtual {p0}, Landroidx/media3/extractor/mp3/XingFrame;->computeDurationUs()J

    move-result-wide v4

    .line 43
    .local v4, "durationUs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Landroidx/media3/extractor/mp3/XingSeeker;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v3, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iget-object v1, p0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v6, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    iget-wide v7, p0, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    iget-object v9, p0, Landroidx/media3/extractor/mp3/XingFrame;->tableOfContents:[J

    move-wide v1, p1

    .end local p1    # "position":J
    .local v1, "position":J
    invoke-direct/range {v0 .. v9}, Landroidx/media3/extractor/mp3/XingSeeker;-><init>(JIJIJ[J)V

    return-object v0
.end method

.method private getTimeUsForTableIndex(I)J
    .locals 4
    .param p1, "tableIndex"    # I

    .line 168
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 1

    .line 158
    iget v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->bitrate:I

    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 153
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDataStartPosition()J
    .locals 4

    .line 148
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    iget v2, p0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 143
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 18
    .param p1, "timeUs"    # J

    .line 94
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/media3/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    iget-wide v3, v0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    iget v5, v0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v1, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v1

    .line 97
    :cond_0
    const-wide/16 v9, 0x0

    iget-wide v11, v0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    move-wide/from16 v7, p1

    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v1

    .line 98
    .end local p1    # "timeUs":J
    .local v1, "timeUs":J
    long-to-double v3, v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    iget-wide v7, v0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    long-to-double v7, v7

    div-double/2addr v3, v7

    .line 100
    .local v3, "percent":D
    const-wide/16 v7, 0x0

    cmpg-double v7, v3, v7

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    if-gtz v7, :cond_1

    .line 101
    const-wide/16 v5, 0x0

    .local v5, "scaledPosition":D
    goto :goto_1

    .line 102
    .end local v5    # "scaledPosition":D
    :cond_1
    cmpl-double v5, v3, v5

    if-ltz v5, :cond_2

    .line 103
    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    .restart local v5    # "scaledPosition":D
    goto :goto_1

    .line 105
    .end local v5    # "scaledPosition":D
    :cond_2
    double-to-int v5, v3

    .line 106
    .local v5, "prevTableIndex":I
    iget-object v6, v0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    .line 107
    .local v6, "tableOfContents":[J
    aget-wide v10, v6, v5

    long-to-double v10, v10

    .line 108
    .local v10, "prevScaledPosition":D
    const/16 v7, 0x63

    if-ne v5, v7, :cond_3

    move-wide v12, v8

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v5, 0x1

    aget-wide v12, v6, v7

    long-to-double v12, v12

    .line 110
    .local v12, "nextScaledPosition":D
    :goto_0
    int-to-double v14, v5

    sub-double v14, v3, v14

    .line 111
    .local v14, "interpolateFraction":D
    sub-double v16, v12, v10

    mul-double v16, v16, v14

    add-double v16, v10, v16

    move-wide/from16 v5, v16

    .line 114
    .end local v6    # "tableOfContents":[J
    .end local v10    # "prevScaledPosition":D
    .end local v12    # "nextScaledPosition":D
    .end local v14    # "interpolateFraction":D
    .local v5, "scaledPosition":D
    :goto_1
    div-double v7, v5, v8

    iget-wide v9, v0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v9, v9

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 116
    .local v9, "positionOffset":J
    iget v7, v0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v11, v7

    iget-wide v7, v0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    const-wide/16 v13, 0x1

    sub-long v13, v7, v13

    invoke-static/range {v9 .. v14}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v7

    .line 117
    .end local v9    # "positionOffset":J
    .local v7, "positionOffset":J
    new-instance v9, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v10, Landroidx/media3/extractor/SeekPoint;

    iget-wide v11, v0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    add-long/2addr v11, v7

    invoke-direct {v10, v1, v2, v11, v12}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v9, v10}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v9
.end method

.method public getTimeUs(J)J
    .locals 21
    .param p1, "position"    # J

    .line 122
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    sub-long v1, p1, v1

    .line 123
    .local v1, "positionOffset":J
    invoke-virtual {v0}, Landroidx/media3/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    move-wide v15, v1

    goto :goto_2

    .line 126
    :cond_0
    iget-object v3, v0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 127
    .local v3, "tableOfContents":[J
    long-to-double v4, v1

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    mul-double/2addr v4, v6

    iget-wide v6, v0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    .line 128
    .local v4, "scaledPosition":D
    double-to-long v6, v4

    const/4 v8, 0x1

    invoke-static {v3, v6, v7, v8, v8}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v6

    .line 129
    .local v6, "prevTableIndex":I
    invoke-direct {v0, v6}, Landroidx/media3/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v7

    .line 130
    .local v7, "prevTimeUs":J
    aget-wide v9, v3, v6

    .line 131
    .local v9, "prevScaledPosition":J
    add-int/lit8 v11, v6, 0x1

    invoke-direct {v0, v11}, Landroidx/media3/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v11

    .line 132
    .local v11, "nextTimeUs":J
    const/16 v13, 0x63

    if-ne v6, v13, :cond_1

    const-wide/16 v13, 0x100

    goto :goto_0

    :cond_1
    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v3, v13

    .line 135
    .local v13, "nextScaledPosition":J
    :goto_0
    cmp-long v15, v9, v13

    if-nez v15, :cond_2

    .line 136
    const-wide/16 v15, 0x0

    move-wide/from16 v19, v15

    move-wide v15, v1

    move-wide/from16 v0, v19

    goto :goto_1

    .line 137
    :cond_2
    move-wide v15, v1

    .end local v1    # "positionOffset":J
    .local v15, "positionOffset":J
    long-to-double v0, v9

    sub-double v0, v4, v0

    move-wide/from16 v17, v0

    sub-long v0, v13, v9

    long-to-double v0, v0

    div-double v0, v17, v0

    :goto_1
    nop

    .line 138
    .local v0, "interpolateFraction":D
    move-wide/from16 v17, v0

    .end local v0    # "interpolateFraction":D
    .local v17, "interpolateFraction":D
    sub-long v0, v11, v7

    long-to-double v0, v0

    mul-double v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long/2addr v0, v7

    return-wide v0

    .line 123
    .end local v3    # "tableOfContents":[J
    .end local v4    # "scaledPosition":D
    .end local v6    # "prevTableIndex":I
    .end local v7    # "prevTimeUs":J
    .end local v9    # "prevScaledPosition":J
    .end local v11    # "nextTimeUs":J
    .end local v13    # "nextScaledPosition":J
    .end local v15    # "positionOffset":J
    .end local v17    # "interpolateFraction":D
    .restart local v1    # "positionOffset":J
    :cond_3
    move-wide v15, v1

    .line 124
    .end local v1    # "positionOffset":J
    .restart local v15    # "positionOffset":J
    :goto_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
