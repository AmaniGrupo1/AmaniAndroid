.class public final Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;
.super Ljava/lang/Object;
.source "OggOpusAudioPacketizer.java"


# static fields
.field private static final CHECKSUM_INDEX:I = 0x16

.field private static final FIRST_AUDIO_SAMPLE_PAGE_SEQUENCE_NUMBER:I = 0x2

.field private static final OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

.field private static final OGG_DEFAULT_ID_HEADER_PAGE:[B

.field private static final OGG_PACKET_HEADER_LENGTH:I = 0x1c

.field private static final SERIAL_NUMBER:I


# instance fields
.field private granulePosition:I

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pageSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    .line 47
    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ct
        -0x2bt
        -0x3bt
        -0x9t
        0x1t
        0x13t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
        0x1t
        0x2t
        0x38t
        0x1t
        -0x80t
        -0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        -0x67t
        0x57t
        0x53t
        0x1t
        0x10t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    .line 62
    return-void
.end method

.method private packetizeInternal(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;
    .locals 19
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "providedOggIdHeaderPayloadBytes"    # [B

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 116
    .local v9, "position":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    .line 117
    .local v10, "limit":I
    sub-int v11, v10, v9

    .line 120
    .local v11, "inputBufferSize":I
    add-int/lit16 v1, v11, 0xff

    const/16 v12, 0xff

    div-int/lit16 v5, v1, 0xff

    .line 121
    .local v5, "numSegments":I
    add-int/lit8 v13, v5, 0x1b

    .line 123
    .local v13, "headerSize":I
    add-int v1, v13, v11

    .line 127
    .local v1, "outputPacketSize":I
    const/4 v2, 0x0

    .line 128
    .local v2, "oggIdHeaderPageSize":I
    iget v3, v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v14, 0x2

    if-ne v3, v14, :cond_1

    .line 130
    if-eqz v8, :cond_0

    .line 131
    array-length v3, v8

    add-int/lit8 v3, v3, 0x1c

    goto :goto_0

    .line 132
    :cond_0
    sget-object v3, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    array-length v3, v3

    :goto_0
    move v2, v3

    .line 133
    sget-object v3, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    array-length v3, v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    move v15, v1

    move/from16 v16, v2

    goto :goto_1

    .line 128
    :cond_1
    move v15, v1

    move/from16 v16, v2

    .line 137
    .end local v1    # "outputPacketSize":I
    .end local v2    # "oggIdHeaderPageSize":I
    .local v15, "outputPacketSize":I
    .local v16, "oggIdHeaderPageSize":I
    :goto_1
    invoke-direct {v0, v15}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 140
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget v2, v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    if-ne v2, v14, :cond_3

    .line 141
    if-eqz v8, :cond_2

    .line 142
    invoke-direct {v0, v1, v8}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->writeOggIdHeaderPage(Ljava/nio/ByteBuffer;[B)V

    goto :goto_2

    .line 145
    :cond_2
    sget-object v2, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 147
    :goto_2
    sget-object v2, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 151
    :cond_3
    invoke-static {v7}, Landroidx/media3/container/OpusUtil;->parsePacketAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v17

    .line 152
    .local v17, "numSamples":I
    iget v2, v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    add-int v2, v2, v17

    iput v2, v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    .line 154
    iget v2, v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    int-to-long v2, v2

    iget v4, v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    .line 158
    move v2, v11

    .line 159
    .local v2, "bytesLeft":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v5, :cond_5

    .line 160
    if-lt v2, v12, :cond_4

    .line 161
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    add-int/lit16 v2, v2, -0xff

    goto :goto_4

    .line 164
    :cond_4
    int-to-byte v4, v2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 165
    const/4 v2, 0x0

    .line 159
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 170
    .end local v3    # "i":I
    :cond_5
    move v3, v9

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v10, :cond_6

    .line 171
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 174
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 178
    iget v3, v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/16 v4, 0x16

    const/4 v6, 0x0

    if-ne v3, v14, :cond_7

    .line 179
    nop

    .line 181
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 182
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    add-int v12, v12, v16

    sget-object v14, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    array-length v14, v14

    add-int/2addr v12, v14

    .line 185
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v18

    sub-int v14, v14, v18

    .line 180
    invoke-static {v3, v12, v14, v6}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    move-result v3

    .line 187
    .local v3, "checksum":I
    sget-object v6, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    array-length v6, v6

    add-int v6, v16, v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v6, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 190
    .end local v3    # "checksum":I
    :cond_7
    nop

    .line 192
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 193
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    .line 194
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v18

    sub-int v14, v14, v18

    .line 191
    invoke-static {v3, v12, v14, v6}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    move-result v3

    .line 196
    .restart local v3    # "checksum":I
    invoke-virtual {v1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 200
    :goto_6
    iget v4, v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    .line 202
    return-object v1
.end method

.method private replaceOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "size"    # I

    .line 282
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 283
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 287
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private writeOggIdHeaderPage(Ljava/nio/ByteBuffer;[B)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "idHeaderPayloadBytes"    # [B

    .line 213
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    .line 219
    array-length p1, p2

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 220
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 221
    nop

    .line 223
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 224
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1c

    .line 222
    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    move-result p1

    .line 227
    .local p1, "checksum":I
    const/16 v0, 0x16

    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 228
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 229
    return-void
.end method

.method private writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "granulePosition"    # J
    .param p4, "pageSequenceNumber"    # I
    .param p5, "numberPageSegments"    # I
    .param p6, "isIdHeaderPacket"    # Z

    .line 248
    const/16 v0, 0x4f

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 249
    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 250
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 251
    const/16 v0, 0x53

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 257
    if-eqz p6, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 260
    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 263
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 266
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 270
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 273
    int-to-long v0, p5

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 274
    return-void
.end method


# virtual methods
.method public packetize(Landroidx/media3/decoder/DecoderInputBuffer;Ljava/util/List;)V
    .locals 3
    .param p1, "inputBuffer"    # Landroidx/media3/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 76
    .local p2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 83
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 84
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    .line 85
    :cond_2
    const/4 v0, 0x0

    :goto_0
    nop

    .line 86
    .local v0, "providedOggIdHeaderPayloadBytes":[B
    iget-object v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->packetizeInternal(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 88
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 89
    iget-object v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    .line 91
    return-void
.end method

.method public reset()V
    .locals 1

    .line 95
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    .line 97
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    .line 98
    return-void
.end method
