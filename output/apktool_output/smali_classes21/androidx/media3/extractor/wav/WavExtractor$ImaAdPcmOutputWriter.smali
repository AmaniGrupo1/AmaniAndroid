.class final Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImaAdPcmOutputWriter"
.end annotation


# static fields
.field private static final INDEX_TABLE:[I

.field private static final STEP_TABLE:[I


# instance fields
.field private final decodedData:Landroidx/media3/common/util/ParsableByteArray;

.field private final extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private final format:Landroidx/media3/common/Format;

.field private final framesPerBlock:I

.field private final inputData:[B

.field private outputFrameCount:J

.field private pendingInputBytes:I

.field private pendingOutputBytes:I

.field private startTimeUs:J

.field private final targetSampleSizeFrames:I

.field private final trackOutput:Landroidx/media3/extractor/TrackOutput;

.field private final wavFormat:Landroidx/media3/extractor/wav/WavFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 389
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    .line 393
    const/16 v0, 0x59

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;)V
    .locals 7
    .param p1, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p2, "trackOutput"    # Landroidx/media3/extractor/TrackOutput;
    .param p3, "wavFormat"    # Landroidx/media3/extractor/wav/WavFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 444
    iput-object p2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 445
    iput-object p3, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    .line 446
    iget v0, p3, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    div-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    .line 448
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v2, p3, Landroidx/media3/extractor/wav/WavFormat;->extraData:[B

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 449
    .local v0, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 450
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    .line 452
    iget v2, p3, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    .line 457
    .local v2, "numChannels":I
    iget v3, p3, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/lit8 v4, v2, 0x4

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x8

    iget v4, p3, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int/2addr v4, v2

    div-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 461
    .local v3, "expectedFramesPerBlock":I
    iget v1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    if-ne v1, v3, :cond_0

    .line 469
    iget v1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    iget v4, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    invoke-static {v1, v4}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v1

    .line 470
    .local v1, "maxBlocksToDecode":I
    iget v4, p3, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v4, v1

    new-array v4, v4, [B

    iput-object v4, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    .line 471
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    iget v5, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    .line 473
    invoke-static {v5, v2}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result v5

    mul-int/2addr v5, v1

    invoke-direct {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v4, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Landroidx/media3/common/util/ParsableByteArray;

    .line 477
    iget v4, p3, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    iget v5, p3, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x8

    iget v5, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    div-int/2addr v4, v5

    .line 478
    .local v4, "constantBitrate":I
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 480
    const-string v6, "audio/raw"

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 481
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 482
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    .line 483
    invoke-static {v6, v2}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, p3, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    .line 484
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, p3, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    .line 485
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 486
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 487
    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Landroidx/media3/common/Format;

    .line 488
    return-void

    .line 462
    .end local v1    # "maxBlocksToDecode":I
    .end local v4    # "constantBitrate":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected frames per block: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "; got: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method

.method private decode([BILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 3
    .param p1, "input"    # [B
    .param p2, "blockCount"    # I
    .param p3, "output"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 579
    const/4 v0, 0x0

    .local v0, "blockIndex":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 580
    const/4 v1, 0x0

    .local v1, "channelIndex":I
    :goto_1
    iget-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v2, v2, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    if-ge v1, v2, :cond_0

    .line 581
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodeBlockForChannel([BII[B)V

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 579
    .end local v1    # "channelIndex":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    .end local v0    # "blockIndex":I
    :cond_1
    iget v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int/2addr v0, p2

    invoke-direct {p0, v0}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(I)I

    move-result v0

    .line 585
    .local v0, "decodedDataSize":I
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 586
    invoke-virtual {p3, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 587
    return-void
.end method

.method private decodeBlockForChannel([BII[B)V
    .locals 19
    .param p1, "input"    # [B
    .param p2, "blockIndex"    # I
    .param p3, "channelIndex"    # I
    .param p4, "output"    # [B

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v1, v1, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    .line 592
    .local v1, "blockSize":I
    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v2, v2, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    .line 601
    .local v2, "numChannels":I
    mul-int v3, p2, v1

    .line 602
    .local v3, "blockStartIndex":I
    mul-int/lit8 v4, p3, 0x4

    add-int/2addr v4, v3

    .line 603
    .local v4, "headerStartIndex":I
    mul-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v4

    .line 604
    .local v5, "dataStartIndex":I
    div-int v6, v1, v2

    add-int/lit8 v6, v6, -0x4

    .line 608
    .local v6, "dataSizeBytes":I
    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    aget-byte v8, p1, v4

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-short v7, v7

    .line 610
    .local v7, "predictedSample":I
    add-int/lit8 v8, v4, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x58

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 611
    .local v8, "stepIndex":I
    sget-object v9, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    aget v9, v9, v8

    .line 614
    .local v9, "step":I
    iget v10, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int v10, v10, p2

    mul-int/2addr v10, v2

    add-int v10, v10, p3

    mul-int/lit8 v10, v10, 0x2

    .line 615
    .local v10, "outputIndex":I
    and-int/lit16 v11, v7, 0xff

    int-to-byte v11, v11

    aput-byte v11, p4, v10

    .line 616
    add-int/lit8 v11, v10, 0x1

    shr-int/lit8 v12, v7, 0x8

    int-to-byte v12, v12

    aput-byte v12, p4, v11

    .line 619
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    mul-int/lit8 v12, v6, 0x2

    if-ge v11, v12, :cond_2

    .line 620
    div-int/lit8 v12, v11, 0x8

    .line 621
    .local v12, "dataSegmentIndex":I
    div-int/lit8 v13, v11, 0x2

    rem-int/lit8 v13, v13, 0x4

    .line 622
    .local v13, "dataSegmentOffset":I
    mul-int v14, v12, v2

    mul-int/lit8 v14, v14, 0x4

    add-int/2addr v14, v5

    add-int/2addr v14, v13

    .line 624
    .local v14, "dataIndex":I
    aget-byte v15, p1, v14

    and-int/lit16 v15, v15, 0xff

    .line 625
    .local v15, "originalSample":I
    rem-int/lit8 v16, v11, 0x2

    if-nez v16, :cond_0

    .line 626
    and-int/lit8 v15, v15, 0xf

    goto :goto_1

    .line 628
    :cond_0
    shr-int/lit8 v15, v15, 0x4

    .line 631
    :goto_1
    and-int/lit8 v16, v15, 0x7

    .line 632
    .local v16, "delta":I
    mul-int/lit8 v17, v16, 0x2

    add-int/lit8 v17, v17, 0x1

    mul-int v17, v17, v9

    shr-int/lit8 v0, v17, 0x3

    .line 634
    .local v0, "difference":I
    and-int/lit8 v17, v15, 0x8

    if-eqz v17, :cond_1

    .line 635
    neg-int v0, v0

    .line 638
    :cond_1
    add-int/2addr v7, v0

    .line 639
    move/from16 v17, v0

    .end local v0    # "difference":I
    .local v17, "difference":I
    const/16 v0, -0x8000

    move/from16 v18, v1

    .end local v1    # "blockSize":I
    .local v18, "blockSize":I
    const/16 v1, 0x7fff

    invoke-static {v7, v0, v1}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v7

    .line 642
    mul-int/lit8 v0, v2, 0x2

    add-int/2addr v10, v0

    .line 643
    and-int/lit16 v0, v7, 0xff

    int-to-byte v0, v0

    aput-byte v0, p4, v10

    .line 644
    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, v7, 0x8

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 646
    sget-object v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    aget v0, v0, v15

    add-int/2addr v8, v0

    .line 647
    sget-object v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v8, v1, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v8

    .line 648
    sget-object v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    aget v9, v0, v8

    .line 619
    .end local v12    # "dataSegmentIndex":I
    .end local v13    # "dataSegmentOffset":I
    .end local v14    # "dataIndex":I
    .end local v15    # "originalSample":I
    .end local v16    # "delta":I
    .end local v17    # "difference":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    goto :goto_0

    .line 650
    .end local v11    # "i":I
    .end local v18    # "blockSize":I
    .restart local v1    # "blockSize":I
    :cond_2
    return-void
.end method

.method private numOutputBytesToFrames(I)I
    .locals 1
    .param p1, "bytes"    # I

    .line 653
    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v0, v0, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 v0, v0, 0x2

    div-int v0, p1, v0

    return v0
.end method

.method private numOutputFramesToBytes(I)I
    .locals 1
    .param p1, "frames"    # I

    .line 657
    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v0, v0, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    invoke-static {p1, v0}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result v0

    return v0
.end method

.method private static numOutputFramesToBytes(II)I
    .locals 1
    .param p0, "frames"    # I
    .param p1, "numChannels"    # I

    .line 661
    mul-int/lit8 v0, p0, 0x2

    mul-int/2addr v0, p1

    return v0
.end method

.method private writeSampleMetadata(I)V
    .locals 11
    .param p1, "sampleFrames"    # I

    .line 559
    iget-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    iget-wide v2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    iget-object v4, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v4, v4, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v6, v4

    .line 561
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    add-long v5, v0, v2

    .line 563
    .local v5, "timeUs":J
    invoke-direct {p0, p1}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(I)I

    move-result v8

    .line 564
    .local v8, "size":I
    iget v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int v9, v0, v8

    .line 565
    .local v9, "offset":I
    iget-object v4, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 567
    iget-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    .line 568
    iget v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int/2addr v0, v8

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 569
    return-void
.end method


# virtual methods
.method public init(IJ)V
    .locals 7
    .param p1, "dataStartPosition"    # I
    .param p2, "dataEndPosition"    # J

    .line 500
    new-instance v0, Landroidx/media3/extractor/wav/WavSeekMap;

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    int-to-long v3, p1

    move-wide v5, p2

    .end local p2    # "dataEndPosition":J
    .local v5, "dataEndPosition":J
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/wav/WavSeekMap;-><init>(Landroidx/media3/extractor/wav/WavFormat;IJJ)V

    .line 502
    .local v0, "wavSeekMap":Landroidx/media3/extractor/wav/WavSeekMap;
    iget-object p2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 503
    iget-object p2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object p3, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Landroidx/media3/common/Format;

    invoke-interface {p2, p3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 504
    iget-object p2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Landroidx/media3/extractor/wav/WavSeekMap;->getDurationUs()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Landroidx/media3/extractor/TrackOutput;->durationUs(J)V

    .line 505
    return-void
.end method

.method public reset(J)V
    .locals 2
    .param p1, "timeUs"    # J

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 493
    iput-wide p1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    .line 494
    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 495
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    .line 496
    return-void
.end method

.method public sampleData(Landroidx/media3/extractor/ExtractorInput;J)Z
    .locals 8
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "bytesLeft"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    iget v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    iget v1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 512
    invoke-direct {p0, v1}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 514
    .local v0, "targetFramesRemaining":I
    iget v1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v1

    .line 515
    .local v1, "blocksToDecode":I
    iget-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v2, v2, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v2, v1

    .line 518
    .local v2, "targetReadBytes":I
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 519
    .local v3, "endOfSampleData":Z
    :goto_0
    if-nez v3, :cond_2

    iget v4, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    if-ge v4, v2, :cond_2

    .line 520
    iget v4, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    sub-int v4, v2, v4

    int-to-long v4, v4

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 521
    .local v4, "bytesToRead":I
    iget-object v5, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget v6, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    invoke-interface {p1, v5, v6, v4}, Landroidx/media3/extractor/ExtractorInput;->read([BII)I

    move-result v5

    .line 522
    .local v5, "bytesAppended":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 523
    const/4 v3, 0x1

    goto :goto_1

    .line 525
    :cond_1
    iget v6, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    add-int/2addr v6, v5

    iput v6, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 527
    .end local v4    # "bytesToRead":I
    .end local v5    # "bytesAppended":I
    :goto_1
    goto :goto_0

    .line 529
    :cond_2
    iget v4, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object v5, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v5, v5, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    div-int/2addr v4, v5

    .line 530
    .local v4, "pendingBlockCount":I
    if-lez v4, :cond_3

    .line 532
    iget-object v5, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget-object v6, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p0, v5, v4, v6}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decode([BILandroidx/media3/common/util/ParsableByteArray;)V

    .line 533
    iget v5, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object v6, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v6, v6, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v6, v4

    sub-int/2addr v5, v6

    iput v5, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 536
    iget-object v5, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v5

    .line 537
    .local v5, "decodedDataSize":I
    iget-object v6, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v7, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v6, v7, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 538
    iget v6, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    add-int/2addr v6, v5

    iput v6, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 541
    iget v6, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    invoke-direct {p0, v6}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v6

    .line 542
    .local v6, "pendingOutputFrames":I
    iget v7, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    if-lt v6, v7, :cond_3

    .line 543
    iget v7, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    invoke-direct {p0, v7}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    .line 548
    .end local v5    # "decodedDataSize":I
    .end local v6    # "pendingOutputFrames":I
    :cond_3
    if-eqz v3, :cond_4

    .line 549
    iget v5, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    invoke-direct {p0, v5}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v5

    .line 550
    .local v5, "pendingOutputFrames":I
    if-lez v5, :cond_4

    .line 551
    invoke-direct {p0, v5}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    .line 555
    .end local v5    # "pendingOutputFrames":I
    :cond_4
    return v3
.end method
