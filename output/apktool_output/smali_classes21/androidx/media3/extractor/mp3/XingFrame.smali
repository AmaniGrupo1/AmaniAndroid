.class final Landroidx/media3/extractor/mp3/XingFrame;
.super Ljava/lang/Object;
.source "XingFrame.java"


# instance fields
.field public final dataSize:J

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameCount:J

.field public final header:Landroidx/media3/extractor/MpegAudioUtil$Header;

.field public final replayGain:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

.field public final tableOfContents:[J


# direct methods
.method private constructor <init>(Landroidx/media3/extractor/MpegAudioUtil$Header;JJ[JLandroidx/media3/extractor/mp3/Mp3InfoReplayGain;II)V
    .locals 1
    .param p1, "header"    # Landroidx/media3/extractor/MpegAudioUtil$Header;
    .param p2, "frameCount"    # J
    .param p4, "dataSize"    # J
    .param p6, "tableOfContents"    # [J
    .param p7, "replayGain"    # Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
    .param p8, "encoderDelay"    # I
    .param p9, "encoderPadding"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {v0, p1}, Landroidx/media3/extractor/MpegAudioUtil$Header;-><init>(Landroidx/media3/extractor/MpegAudioUtil$Header;)V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 69
    iput-wide p2, p0, Landroidx/media3/extractor/mp3/XingFrame;->frameCount:J

    .line 70
    iput-wide p4, p0, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    .line 71
    iput-object p6, p0, Landroidx/media3/extractor/mp3/XingFrame;->tableOfContents:[J

    .line 72
    iput-object p7, p0, Landroidx/media3/extractor/mp3/XingFrame;->replayGain:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    .line 73
    iput p8, p0, Landroidx/media3/extractor/mp3/XingFrame;->encoderDelay:I

    .line 74
    iput p9, p0, Landroidx/media3/extractor/mp3/XingFrame;->encoderPadding:I

    .line 75
    return-void
.end method

.method public static parse(Landroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/XingFrame;
    .locals 14
    .param p0, "mpegAudioHeader"    # Landroidx/media3/extractor/MpegAudioUtil$Header;
    .param p1, "frame"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 89
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 90
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 91
    .local v1, "frameCount":I
    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    :goto_1
    move-wide v8, v2

    .line 94
    .local v8, "dataSize":J
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 95
    const/16 v2, 0x64

    new-array v4, v2, [J

    .line 96
    .local v4, "tableOfContents":[J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_2

    .line 97
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object v10, v4

    .end local v5    # "i":I
    goto :goto_3

    .line 100
    .end local v4    # "tableOfContents":[J
    :cond_3
    const/4 v4, 0x0

    move-object v10, v4

    .line 103
    .local v10, "tableOfContents":[J
    :goto_3
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    .line 104
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 111
    :cond_4
    const/16 v2, 0xb

    .line 113
    .local v2, "bytesToSkipBeforeReplayGain":I
    const/4 v3, 0x2

    .line 115
    .local v3, "bytesToSkipAfterReplayGain":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    add-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x3

    if-lt v4, v5, :cond_5

    .line 116
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 117
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readFloat()F

    move-result v4

    .line 118
    .local v4, "peak":F
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 119
    .local v5, "field1":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 120
    .local v6, "field2":I
    invoke-static {v4, v5, v6}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->parse(FII)Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    move-result-object v7

    .line 122
    .local v7, "replayGain":Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 123
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v11

    .line 124
    .local v11, "encoderDelayAndPadding":I
    const v12, 0xfff000

    and-int/2addr v12, v11

    shr-int/lit8 v12, v12, 0xc

    .line 125
    .local v12, "encoderDelay":I
    and-int/lit16 v4, v11, 0xfff

    .line 126
    .end local v5    # "field1":I
    .end local v6    # "field2":I
    .end local v11    # "encoderDelayAndPadding":I
    .local v4, "encoderPadding":I
    move v13, v4

    move-object v11, v7

    goto :goto_4

    .line 127
    .end local v4    # "encoderPadding":I
    .end local v7    # "replayGain":Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
    .end local v12    # "encoderDelay":I
    :cond_5
    const/4 v7, 0x0

    .line 128
    .restart local v7    # "replayGain":Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
    const/4 v12, -0x1

    .line 129
    .restart local v12    # "encoderDelay":I
    const/4 v4, -0x1

    move v13, v4

    move-object v11, v7

    .line 132
    .end local v7    # "replayGain":Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
    .local v11, "replayGain":Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
    .local v13, "encoderPadding":I
    :goto_4
    new-instance v4, Landroidx/media3/extractor/mp3/XingFrame;

    int-to-long v6, v1

    move-object v5, p0

    .end local p0    # "mpegAudioHeader":Landroidx/media3/extractor/MpegAudioUtil$Header;
    .local v5, "mpegAudioHeader":Landroidx/media3/extractor/MpegAudioUtil$Header;
    invoke-direct/range {v4 .. v13}, Landroidx/media3/extractor/mp3/XingFrame;-><init>(Landroidx/media3/extractor/MpegAudioUtil$Header;JJ[JLandroidx/media3/extractor/mp3/Mp3InfoReplayGain;II)V

    return-object v4
.end method


# virtual methods
.method public computeDurationUs()J
    .locals 4

    .line 148
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingFrame;->frameCount:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingFrame;->frameCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingFrame;->frameCount:J

    iget-object v2, p0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget-object v2, p0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    return-wide v0

    .line 150
    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public getMetadata()Landroidx/media3/common/Metadata;
    .locals 4

    .line 161
    iget-object v0, p0, Landroidx/media3/extractor/mp3/XingFrame;->replayGain:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Landroidx/media3/common/Metadata;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/media3/common/Metadata$Entry;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/media3/extractor/mp3/XingFrame;->replayGain:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
