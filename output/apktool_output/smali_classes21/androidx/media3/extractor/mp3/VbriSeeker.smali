.class final Landroidx/media3/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "VbriSeeker"


# instance fields
.field private final bitrate:I

.field private final dataEndPosition:J

.field private final dataStartPosition:J

.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJJJI)V
    .locals 0
    .param p1, "timesUs"    # [J
    .param p2, "positions"    # [J
    .param p3, "durationUs"    # J
    .param p5, "dataStartPosition"    # J
    .param p7, "dataEndPosition"    # J
    .param p9, "bitrate"    # I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 128
    iput-object p2, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    .line 129
    iput-wide p3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->durationUs:J

    .line 130
    iput-wide p5, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataStartPosition:J

    .line 131
    iput-wide p7, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    .line 132
    iput p9, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->bitrate:I

    .line 133
    return-void
.end method

.method public static create(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/VbriSeeker;
    .locals 27
    .param p0, "inputLength"    # J
    .param p2, "position"    # J
    .param p4, "mpegAudioHeader"    # Landroidx/media3/extractor/MpegAudioUtil$Header;
    .param p5, "frame"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 52
    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 53
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 54
    .local v4, "bytes":I
    iget v5, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v5, v5

    add-long v12, p2, v5

    .line 55
    .local v12, "startOfMp3Data":J
    int-to-long v5, v4

    add-long/2addr v5, v12

    .line 56
    .local v5, "endOfMp3Data":J
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 57
    .local v7, "numFrames":I
    const/4 v8, 0x0

    if-gtz v7, :cond_0

    .line 58
    return-object v8

    .line 60
    :cond_0
    iget v9, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 61
    .local v9, "sampleRate":I
    int-to-long v10, v7

    iget v14, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v14, v14

    mul-long/2addr v10, v14

    const-wide/16 v14, 0x1

    sub-long/2addr v10, v14

    .line 62
    invoke-static {v10, v11, v9}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v10

    .line 64
    .local v10, "durationUs":J
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    .line 65
    .local v14, "entryCount":I
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v15

    .line 66
    .local v15, "scale":I
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v17

    .line 67
    .local v17, "entrySize":I
    move-object/from16 v16, v8

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 69
    iget v8, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    move/from16 v18, v4

    .end local v4    # "bytes":I
    .local v18, "bytes":I
    int-to-long v3, v8

    add-long v3, p2, v3

    .line 71
    .end local p2    # "position":J
    .local v3, "position":J
    new-array v8, v14, [J

    .line 72
    .local v8, "timesUs":[J
    move/from16 v19, v9

    .end local v9    # "sampleRate":I
    .local v19, "sampleRate":I
    new-array v9, v14, [J

    .line 73
    .local v9, "positions":[J
    const/16 v20, 0x0

    move/from16 v25, v20

    move/from16 v20, v7

    move/from16 v7, v25

    .local v7, "index":I
    .local v20, "numFrames":I
    :goto_0
    if-ge v7, v14, :cond_1

    .line 74
    move-object/from16 p2, v8

    move-object/from16 p3, v9

    .end local v8    # "timesUs":[J
    .end local v9    # "positions":[J
    .local p2, "timesUs":[J
    .local p3, "positions":[J
    int-to-long v8, v7

    mul-long/2addr v8, v10

    move/from16 v21, v7

    move-wide/from16 v22, v8

    .end local v7    # "index":I
    .local v21, "index":I
    int-to-long v7, v14

    div-long v8, v22, v7

    aput-wide v8, p2, v21

    .line 75
    aput-wide v3, p3, v21

    .line 77
    packed-switch v17, :pswitch_data_0

    .line 91
    return-object v16

    .line 88
    :pswitch_0
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 89
    .local v7, "segmentSize":I
    goto :goto_1

    .line 85
    .end local v7    # "segmentSize":I
    :pswitch_1
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7

    .line 86
    .restart local v7    # "segmentSize":I
    goto :goto_1

    .line 82
    .end local v7    # "segmentSize":I
    :pswitch_2
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 83
    .restart local v7    # "segmentSize":I
    goto :goto_1

    .line 79
    .end local v7    # "segmentSize":I
    :pswitch_3
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 80
    .restart local v7    # "segmentSize":I
    nop

    .line 93
    :goto_1
    int-to-long v8, v7

    move/from16 v22, v7

    move-wide/from16 v23, v8

    .end local v7    # "segmentSize":I
    .local v22, "segmentSize":I
    int-to-long v7, v15

    mul-long v8, v23, v7

    add-long/2addr v3, v8

    .line 73
    .end local v22    # "segmentSize":I
    add-int/lit8 v7, v21, 0x1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .end local v21    # "index":I
    .local v7, "index":I
    goto :goto_0

    .end local p2    # "timesUs":[J
    .end local p3    # "positions":[J
    .restart local v8    # "timesUs":[J
    .restart local v9    # "positions":[J
    :cond_1
    move/from16 v21, v7

    move-object/from16 p2, v8

    move-object/from16 p3, v9

    .line 95
    .end local v7    # "index":I
    .end local v8    # "timesUs":[J
    .end local v9    # "positions":[J
    .restart local p2    # "timesUs":[J
    .restart local p3    # "positions":[J
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    const-string v8, ", "

    const-string v9, "VbriSeeker"

    if-eqz v7, :cond_2

    cmp-long v7, v0, v5

    if-eqz v7, :cond_2

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v10

    .end local v10    # "durationUs":J
    .local v21, "durationUs":J
    const-string v10, "VBRI data size mismatch: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 95
    .end local v21    # "durationUs":J
    .restart local v10    # "durationUs":J
    :cond_2
    move-wide/from16 v21, v10

    .line 98
    .end local v10    # "durationUs":J
    .restart local v21    # "durationUs":J
    :goto_2
    cmp-long v7, v5, v3

    if-eqz v7, :cond_3

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VBRI bytes and ToC mismatch (using max): "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nSeeking will be inaccurate."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 109
    :cond_3
    new-instance v7, Landroidx/media3/extractor/mp3/VbriSeeker;

    iget v8, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    move-object/from16 v9, p3

    move/from16 v16, v8

    move-wide/from16 v10, v21

    move-object/from16 v8, p2

    move-wide/from16 v25, v5

    move v5, v14

    move v6, v15

    move-wide/from16 v14, v25

    .end local v15    # "scale":I
    .end local v21    # "durationUs":J
    .end local p2    # "timesUs":[J
    .end local p3    # "positions":[J
    .local v5, "entryCount":I
    .local v6, "scale":I
    .restart local v8    # "timesUs":[J
    .restart local v9    # "positions":[J
    .restart local v10    # "durationUs":J
    .local v14, "endOfMp3Data":J
    invoke-direct/range {v7 .. v16}, Landroidx/media3/extractor/mp3/VbriSeeker;-><init>([J[JJJJI)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 1

    .line 174
    iget v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->bitrate:I

    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 169
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDataStartPosition()J
    .locals 2

    .line 164
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataStartPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 159
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 8
    .param p1, "timeUs"    # J

    .line 142
    iget-object v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 143
    .local v0, "tableIndex":I
    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 144
    .local v2, "seekPoint":Landroidx/media3/extractor/SeekPoint;
    iget-wide v3, v2, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v3, v3, p1

    if-gez v3, :cond_1

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    array-length v3, v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    add-int/lit8 v4, v0, 0x1

    aget-wide v4, v3, v4

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v6, v3, v6

    invoke-direct {v1, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 148
    .local v1, "nextSeekPoint":Landroidx/media3/extractor/SeekPoint;
    new-instance v3, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v2, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v3

    .line 145
    .end local v1    # "nextSeekPoint":Landroidx/media3/extractor/SeekPoint;
    :cond_1
    :goto_0
    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v1
.end method

.method public getTimeUs(J)J
    .locals 3
    .param p1, "position"    # J

    .line 154
    iget-object v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public isSeekable()Z
    .locals 1

    .line 137
    const/4 v0, 0x1

    return v0
.end method
