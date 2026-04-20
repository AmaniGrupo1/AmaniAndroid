.class final Landroidx/media3/extractor/wav/WavHeaderReader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;
    }
.end annotation


# static fields
.field private static final AMBISONIC_SUBFORMAT:[B

.field private static final TAG:Ljava/lang/String; = "WavHeaderReader"

.field private static final WAVEEXT_SUBFORMAT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const/16 v0, 0xe

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/wav/WavHeaderReader;->WAVEEXT_SUBFORMAT:[B

    .line 42
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/wav/WavHeaderReader;->AMBISONIC_SUBFORMAT:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
        0x0t
        -0x80t
        0x0t
        0x0t
        -0x56t
        0x0t
        0x38t
        -0x65t
        0x71t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x21t
        0x7t
        -0x2dt
        0x11t
        -0x7at
        0x44t
        -0x38t
        -0x3ft
        -0x36t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    return-void
.end method

.method public static checkFileType(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 6
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 61
    .local v0, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-static {p0, v0}, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v1

    .line 62
    .local v1, "chunkHeader":Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;
    iget v2, v1, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const v3, 0x52494646

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const v3, 0x52463634

    if-eq v2, v3, :cond_0

    .line 63
    return v4

    .line 66
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p0, v2, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 67
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 68
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 69
    .local v2, "formType":I
    const v3, 0x57415645

    if-eq v2, v3, :cond_1

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported form type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WavHeaderReader"

    invoke-static {v5, v3}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return v4

    .line 74
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static readFormat(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/wav/WavFormat;
    .locals 17
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 114
    .local v1, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    const v3, 0x666d7420

    invoke-static {v3, v0, v1}, Landroidx/media3/extractor/wav/WavHeaderReader;->skipToChunk(ILandroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v3

    .line 115
    .local v3, "chunkHeader":Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;
    iget-wide v4, v3, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    const-wide/16 v6, 0x10

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 116
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {v0, v4, v5, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 117
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 118
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v4

    .line 119
    .local v4, "audioFormatType":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v8

    .line 120
    .local v8, "numChannels":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v9

    .line 121
    .local v9, "frameRateHz":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v10

    .line 122
    .local v10, "averageBytesPerSecond":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v11

    .line 123
    .local v11, "blockSize":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v12

    .line 125
    .local v12, "bitsPerSample":I
    iget-wide v6, v3, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v6, v6

    add-int/lit8 v2, v6, -0x10

    .line 127
    .local v2, "bytesLeft":I
    if-lez v2, :cond_9

    .line 128
    new-array v6, v2, [B

    .line 129
    .local v6, "extraData":[B
    invoke-interface {v0, v6, v5, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 130
    const v7, 0xfffe

    if-ne v4, v7, :cond_8

    const/16 v7, 0x18

    if-ne v2, v7, :cond_8

    .line 131
    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v7, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 132
    .local v7, "extensionScratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 133
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v13

    .line 134
    .local v13, "validBitsPerSample":I
    if-eqz v13, :cond_2

    if-ne v13, v12, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "validBits ( "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ")  != bitsPerSample( "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ") are not supported"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v5

    throw v5

    .line 142
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v14

    .line 143
    .local v14, "channelMask":I
    shr-int/lit8 v15, v14, 0x12

    if-nez v15, :cond_7

    .line 148
    if-eqz v14, :cond_4

    invoke-static {v14}, Ljava/lang/Integer;->bitCount(I)I

    move-result v15

    if-ne v15, v8, :cond_3

    goto :goto_2

    .line 149
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invalid number of channels ("

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-static {v14}, Ljava/lang/Integer;->bitCount(I)I

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ") in channel mask "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-static {v5}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v5

    throw v5

    .line 155
    :cond_4
    :goto_2
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v4

    .line 156
    const/16 v15, 0xe

    move-object/from16 v16, v1

    .end local v1    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    .local v16, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    new-array v1, v15, [B

    .line 157
    .local v1, "extensionString":[B
    invoke-virtual {v7, v1, v5, v15}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 158
    sget-object v5, Landroidx/media3/extractor/wav/WavHeaderReader;->WAVEEXT_SUBFORMAT:[B

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroidx/media3/extractor/wav/WavHeaderReader;->AMBISONIC_SUBFORMAT:[B

    .line 159
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 160
    :cond_5
    const-string v5, "invalid wav format extension guid"

    invoke-static {v5}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v5

    throw v5

    .line 163
    .end local v1    # "extensionString":[B
    .end local v7    # "extensionScratch":Landroidx/media3/common/util/ParsableByteArray;
    .end local v13    # "validBitsPerSample":I
    .end local v14    # "channelMask":I
    :cond_6
    :goto_3
    move v7, v4

    move-object v13, v6

    goto :goto_4

    .line 144
    .end local v16    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    .local v1, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v7    # "extensionScratch":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v13    # "validBitsPerSample":I
    .restart local v14    # "channelMask":I
    :cond_7
    move-object/from16 v16, v1

    .end local v1    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v16    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid channel mask "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 130
    .end local v7    # "extensionScratch":Landroidx/media3/common/util/ParsableByteArray;
    .end local v13    # "validBitsPerSample":I
    .end local v14    # "channelMask":I
    .end local v16    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v1    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    :cond_8
    move-object/from16 v16, v1

    .line 168
    .end local v1    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v16    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    move v7, v4

    move-object v13, v6

    goto :goto_4

    .line 165
    .end local v6    # "extraData":[B
    .end local v16    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v1    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    :cond_9
    move-object/from16 v16, v1

    .end local v1    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v16    # "scratch":Landroidx/media3/common/util/ParsableByteArray;
    sget-object v6, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    move v7, v4

    move-object v13, v6

    .line 168
    .end local v4    # "audioFormatType":I
    .local v7, "audioFormatType":I
    .local v13, "extraData":[B
    :goto_4
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v14

    sub-long/2addr v4, v14

    long-to-int v1, v4

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 169
    new-instance v6, Landroidx/media3/extractor/wav/WavFormat;

    invoke-direct/range {v6 .. v13}, Landroidx/media3/extractor/wav/WavFormat;-><init>(IIIIII[B)V

    return-object v6
.end method

.method public static readRf64SampleDataSize(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 7
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 89
    .local v0, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-static {p0, v0}, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 90
    .local v2, "chunkHeader":Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;
    iget v3, v2, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const v4, 0x64733634

    if-eq v3, v4, :cond_0

    .line 91
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 92
    const-wide/16 v3, -0x1

    return-wide v3

    .line 94
    :cond_0
    invoke-interface {p0, v1}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 95
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 96
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p0, v4, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 97
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v3

    .line 98
    .local v3, "sampleDataSize":J
    iget-wide v5, v2, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v5, v5

    add-int/2addr v5, v1

    invoke-interface {p0, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 99
    return-wide v3
.end method

.method private static skipToChunk(ILandroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;
    .locals 7
    .param p0, "chunkId"    # I
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "scratch"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-static {p1, p2}, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v0

    .line 221
    .local v0, "chunkHeader":Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;
    :goto_0
    iget v1, v0, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    if-eq v1, p0, :cond_2

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unknown WAV chunk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WavHeaderReader"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-wide/16 v1, 0x8

    iget-wide v3, v0, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    add-long/2addr v3, v1

    .line 227
    .local v3, "bytesToSkip":J
    iget-wide v1, v0, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    const-wide/16 v5, 0x2

    rem-long/2addr v1, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 228
    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    .line 230
    :cond_0
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    .line 234
    long-to-int v1, v3

    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 235
    invoke-static {p1, p2}, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v0

    .line 236
    .end local v3    # "bytesToSkip":J
    goto :goto_0

    .line 231
    .restart local v3    # "bytesToSkip":J
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 237
    .end local v3    # "bytesToSkip":J
    :cond_2
    return-object v0
.end method

.method public static skipToSampleData(Landroidx/media3/extractor/ExtractorInput;)Landroid/util/Pair;
    .locals 7
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/ExtractorInput;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 195
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 197
    .local v0, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    const v2, 0x64617461

    invoke-static {v2, p0, v0}, Landroidx/media3/extractor/wav/WavHeaderReader;->skipToChunk(ILandroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 199
    .local v2, "chunkHeader":Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;
    invoke-interface {p0, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 201
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    .line 202
    .local v3, "dataStartPosition":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v5, v2, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method
