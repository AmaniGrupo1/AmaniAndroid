.class public final Landroidx/media3/extractor/FlacFrameReader;
.super Ljava/lang/Object;
.source "FlacFrameReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlacFrameReader"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndReadBlockSizeSamples(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;IJ)Z
    .locals 8
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "flacStreamMetadata"    # Landroidx/media3/extractor/FlacStreamMetadata;
    .param p2, "blockSizeKey"    # I
    .param p3, "firstSampleNumber"    # J

    .line 294
    invoke-static {p0, p2}, Landroidx/media3/extractor/FlacFrameReader;->readFrameBlockSizeSamplesFromKey(Landroidx/media3/common/util/ParsableByteArray;I)I

    move-result v0

    .line 295
    .local v0, "blockSizeSamples":I
    iget-wide v1, p1, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    int-to-long v4, v0

    add-long/2addr v4, p3

    iget-wide v6, p1, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 298
    .local v1, "isMaybeLastBlock":Z
    :goto_1
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-nez v1, :cond_2

    iget v4, p1, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    if-lt v0, v4, :cond_3

    :cond_2
    iget v4, p1, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    if-gt v0, v4, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method private static checkAndReadCrc(Landroidx/media3/common/util/ParsableByteArray;I)Z
    .locals 5
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameStartPosition"    # I

    .line 348
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 349
    .local v0, "crc":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 350
    .local v1, "frameEndPosition":I
    nop

    .line 351
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Landroidx/media3/common/util/Util;->crc8([BIII)I

    move-result v2

    .line 352
    .local v2, "expectedCrc":I
    if-ne v0, v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method private static checkAndReadFirstSampleNumber(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ZLandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .locals 9
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "flacStreamMetadata"    # Landroidx/media3/extractor/FlacStreamMetadata;
    .param p2, "isBlockSizeVariable"    # Z
    .param p3, "sampleNumberHolder"    # Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 262
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUtf8EncodedLong()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .local v1, "utf8Value":J
    nop

    .line 267
    if-eqz p2, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget v3, p1, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    int-to-long v3, v3

    mul-long/2addr v3, v1

    .line 268
    .local v3, "sampleNumber":J
    :goto_0
    iget-wide v5, p1, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-wide v5, p1, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 269
    return v0

    .line 271
    :cond_1
    iput-wide v3, p3, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    .line 272
    const/4 v0, 0x1

    return v0

    .line 263
    .end local v1    # "utf8Value":J
    .end local v3    # "sampleNumber":J
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method public static checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .locals 19
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "flacStreamMetadata"    # Landroidx/media3/extractor/FlacStreamMetadata;
    .param p2, "frameStartMarker"    # I
    .param p3, "sampleNumberHolder"    # Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 62
    .local v3, "frameStartPosition":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 63
    .local v4, "frameHeaderBytes":J
    const/16 v6, 0x10

    ushr-long v7, v4, v6

    move/from16 v9, p2

    int-to-long v10, v9

    cmp-long v7, v7, v10

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 64
    return v8

    .line 67
    :cond_0
    ushr-long v6, v4, v6

    const-wide/16 v10, 0x1

    and-long/2addr v6, v10

    cmp-long v6, v6, v10

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v8

    .line 68
    .local v6, "isBlockSizeVariable":Z
    :goto_0
    const/16 v12, 0xc

    shr-long v12, v4, v12

    const-wide/16 v14, 0xf

    and-long/2addr v12, v14

    long-to-int v12, v12

    .line 69
    .local v12, "blockSizeKey":I
    const/16 v13, 0x8

    shr-long v16, v4, v13

    const/16 v18, 0x1

    and-long v7, v16, v14

    long-to-int v7, v7

    .line 70
    .local v7, "sampleRateKey":I
    const/4 v8, 0x4

    shr-long v16, v4, v8

    and-long v14, v16, v14

    long-to-int v8, v14

    .line 71
    .local v8, "channelAssignmentKey":I
    shr-long v14, v4, v18

    const-wide/16 v16, 0x7

    and-long v14, v14, v16

    long-to-int v14, v14

    .line 72
    .local v14, "bitsPerSampleKey":I
    and-long v15, v4, v10

    cmp-long v10, v15, v10

    if-nez v10, :cond_2

    move/from16 v10, v18

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 73
    .local v10, "reservedBit":Z
    :goto_1
    invoke-static {v8, v1}, Landroidx/media3/extractor/FlacFrameReader;->checkChannelAssignment(ILandroidx/media3/extractor/FlacStreamMetadata;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 74
    invoke-static {v14, v1}, Landroidx/media3/extractor/FlacFrameReader;->checkBitsPerSample(ILandroidx/media3/extractor/FlacStreamMetadata;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez v10, :cond_4

    .line 76
    invoke-static {v0, v1, v6, v2}, Landroidx/media3/extractor/FlacFrameReader;->checkAndReadFirstSampleNumber(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ZLandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v15, v14

    .end local v14    # "bitsPerSampleKey":I
    .local v15, "bitsPerSampleKey":I
    iget-wide v13, v2, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    .line 78
    invoke-static {v0, v1, v12, v13, v14}, Landroidx/media3/extractor/FlacFrameReader;->checkAndReadBlockSizeSamples(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;IJ)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 80
    invoke-static {v0, v1, v7}, Landroidx/media3/extractor/FlacFrameReader;->checkAndReadSampleRate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 81
    invoke-static {v0, v3}, Landroidx/media3/extractor/FlacFrameReader;->checkAndReadCrc(Landroidx/media3/common/util/ParsableByteArray;I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 82
    invoke-static {v0}, Landroidx/media3/extractor/FlacFrameReader;->checkFirstSubframeHeaderFromPeek(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_3

    .line 76
    .end local v15    # "bitsPerSampleKey":I
    .restart local v14    # "bitsPerSampleKey":I
    :cond_3
    move v15, v14

    .end local v14    # "bitsPerSampleKey":I
    .restart local v15    # "bitsPerSampleKey":I
    goto :goto_2

    .line 74
    .end local v15    # "bitsPerSampleKey":I
    .restart local v14    # "bitsPerSampleKey":I
    :cond_4
    move v15, v14

    .end local v14    # "bitsPerSampleKey":I
    .restart local v15    # "bitsPerSampleKey":I
    goto :goto_2

    .line 73
    .end local v15    # "bitsPerSampleKey":I
    .restart local v14    # "bitsPerSampleKey":I
    :cond_5
    move v15, v14

    .line 82
    .end local v14    # "bitsPerSampleKey":I
    .restart local v15    # "bitsPerSampleKey":I
    :cond_6
    :goto_2
    const/16 v18, 0x0

    .line 73
    :goto_3
    return v18
.end method

.method private static checkAndReadSampleRate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;I)Z
    .locals 5
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "flacStreamMetadata"    # Landroidx/media3/extractor/FlacStreamMetadata;
    .param p2, "sampleRateKey"    # I

    .line 317
    iget v0, p1, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 318
    .local v0, "expectedSampleRate":I
    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 319
    return v1

    .line 320
    :cond_0
    const/16 v2, 0xb

    const/4 v3, 0x0

    if-gt p2, v2, :cond_2

    .line 321
    iget v2, p1, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 322
    :cond_2
    const/16 v2, 0xc

    if-ne p2, v2, :cond_4

    .line 323
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    if-ne v2, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    .line 324
    :cond_4
    const/16 v2, 0xe

    if-gt p2, v2, :cond_7

    .line 325
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 326
    .local v4, "sampleRate":I
    if-ne p2, v2, :cond_5

    .line 327
    mul-int/lit8 v4, v4, 0xa

    .line 329
    :cond_5
    if-ne v4, v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    return v1

    .line 331
    .end local v4    # "sampleRate":I
    :cond_7
    return v3
.end method

.method private static checkBitsPerSample(ILandroidx/media3/extractor/FlacStreamMetadata;)Z
    .locals 2
    .param p0, "bitsPerSampleKey"    # I
    .param p1, "flacStreamMetadata"    # Landroidx/media3/extractor/FlacStreamMetadata;

    .line 234
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 235
    return v0

    .line 237
    :cond_0
    iget v1, p1, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static checkChannelAssignment(ILandroidx/media3/extractor/FlacStreamMetadata;)Z
    .locals 4
    .param p0, "channelAssignmentKey"    # I
    .param p1, "flacStreamMetadata"    # Landroidx/media3/extractor/FlacStreamMetadata;

    .line 216
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_1

    .line 217
    iget v0, p1, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    sub-int/2addr v0, v2

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 218
    :cond_1
    const/16 v0, 0xa

    if-gt p0, v0, :cond_3

    .line 219
    iget v0, p1, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 221
    :cond_3
    return v1
.end method

.method private static checkFirstSubframeHeaderFromPeek(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 5
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 367
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 369
    return v1

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    .line 373
    .local v0, "subframeHeader":I
    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 374
    return v3

    .line 376
    :cond_1
    and-int/lit8 v2, v0, 0x7e

    shr-int/2addr v2, v1

    .line 377
    .local v2, "subframeType":I
    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    const/4 v4, 0x7

    if-le v2, v4, :cond_3

    :cond_2
    const/16 v4, 0xd

    if-lt v2, v4, :cond_4

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_4

    .line 378
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring frame where first subframe has a reserved type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FlacFrameReader"

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return v3

    .line 381
    :cond_4
    return v1
.end method

.method public static checkFrameHeaderFromPeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .locals 9
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "flacStreamMetadata"    # Landroidx/media3/extractor/FlacStreamMetadata;
    .param p2, "frameStartMarker"    # I
    .param p3, "sampleNumberHolder"    # Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    .line 110
    .local v0, "originalPeekPosition":J
    const/16 v2, 0x11

    .line 111
    .local v2, "dataToCheck":I
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 114
    .local v3, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-interface {p0, v4, v5, v6}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 115
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->peekChar()C

    move-result v4

    .line 116
    .local v4, "frameStart":I
    if-eq v4, p2, :cond_0

    .line 117
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 118
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v0, v6

    long-to-int v6, v6

    invoke-interface {p0, v6}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 119
    return v5

    .line 122
    :cond_0
    const/4 v5, 0x2

    .line 123
    .local v5, "totalBytesPeeked":I
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    add-int/lit8 v8, v2, -0x2

    invoke-static {p0, v7, v6, v8}, Landroidx/media3/extractor/ExtractorUtil;->peekToLength(Landroidx/media3/extractor/ExtractorInput;[BII)I

    move-result v6

    add-int/2addr v5, v6

    .line 124
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 126
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 127
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v0, v6

    long-to-int v6, v6

    invoke-interface {p0, v6}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 129
    invoke-static {v3, p1, p2, p3}, Landroidx/media3/extractor/FlacFrameReader;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v6

    return v6
.end method

.method public static getFirstSampleNumber(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/FlacStreamMetadata;)J
    .locals 8
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "flacStreamMetadata"    # Landroidx/media3/extractor/FlacStreamMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 150
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 151
    new-array v1, v0, [B

    .line 152
    .local v1, "blockingStrategyByte":[B
    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 153
    aget-byte v3, v1, v2

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 154
    .local v0, "isBlockSizeVariable":Z
    :goto_0
    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 156
    if-eqz v0, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    .line 157
    .local v3, "maxUtf8SampleNumberSize":I
    :goto_1
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 158
    .local v4, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    nop

    .line 159
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-static {p0, v5, v2, v3}, Landroidx/media3/extractor/ExtractorUtil;->peekToLength(Landroidx/media3/extractor/ExtractorInput;[BII)I

    move-result v2

    .line 160
    .local v2, "totalBytesPeeked":I
    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 161
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 163
    new-instance v5, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {v5}, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    .line 164
    .local v5, "sampleNumberHolder":Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;
    invoke-static {v4, p1, v0, v5}, Landroidx/media3/extractor/FlacFrameReader;->checkAndReadFirstSampleNumber(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ZLandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    iget-wide v6, v5, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide v6

    .line 166
    :cond_2
    const/4 v6, 0x0

    invoke-static {v6, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v6

    throw v6
.end method

.method public static readFrameBlockSizeSamplesFromKey(Landroidx/media3/common/util/ParsableByteArray;I)I
    .locals 2
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "blockSizeKey"    # I

    .line 181
    packed-switch p1, :pswitch_data_0

    .line 203
    const/4 v0, -0x1

    return v0

    .line 201
    :pswitch_0
    add-int/lit8 v0, p1, -0x8

    const/16 v1, 0x100

    shl-int v0, v1, v0

    return v0

    .line 192
    :pswitch_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 190
    :pswitch_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 188
    :pswitch_3
    add-int/lit8 v0, p1, -0x2

    const/16 v1, 0x240

    shl-int v0, v1, v0

    return v0

    .line 183
    :pswitch_4
    const/16 v0, 0xc0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
