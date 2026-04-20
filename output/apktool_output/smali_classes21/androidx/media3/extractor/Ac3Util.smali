.class public final Landroidx/media3/extractor/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final AC3_MAX_RATE_BYTES_PER_SECOND:I = 0x13880

.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field public static final E_AC3_MAX_RATE_BYTES_PER_SECOND:I = 0xbb800

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

.field public static final TRUEHD_MAX_RATE_BYTES_PER_SECOND:I = 0x2ebae4

.field public static final TRUEHD_RECHUNK_SAMPLE_COUNT:I = 0x10

.field public static final TRUEHD_SYNCFRAME_PREFIX_LENGTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 142
    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 145
    const v0, 0xac44

    const/16 v1, 0x7d00

    const v2, 0xbb80

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 148
    const/16 v0, 0x5622

    const/16 v1, 0x3e80

    const/16 v2, 0x5dc0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    .line 151
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 154
    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 160
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_2
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateEac3Bitrate(III)I
    .locals 2
    .param p0, "frameSize"    # I
    .param p1, "sampleRate"    # I
    .param p2, "audioBlocks"    # I

    .line 632
    mul-int v0, p0, p1

    mul-int/lit8 v1, p2, 0x20

    div-int/2addr v0, v1

    return v0
.end method

.method public static findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 557
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 558
    .local v0, "startIndex":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 559
    .local v1, "endIndex":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 561
    add-int/lit8 v3, v2, 0x4

    invoke-static {p0, v3}, Landroidx/media3/common/util/Util;->getBigEndianInt(Ljava/nio/ByteBuffer;I)I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    const v4, -0x78d9046

    if-ne v3, v4, :cond_0

    .line 562
    sub-int v3, v2, v0

    return v3

    .line 559
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 4
    .param p0, "fscod"    # I
    .param p1, "frmsizecod"    # I

    .line 605
    div-int/lit8 v0, p1, 0x2

    .line 606
    .local v0, "halfFrmsizecod":I
    if-ltz p0, :cond_3

    sget-object v1, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v1, v1

    if-ge p0, v1, :cond_3

    if-ltz p1, :cond_3

    sget-object v1, Landroidx/media3/extractor/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    sget-object v1, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v1, v1, p0

    .line 614
    .local v1, "sampleRate":I
    const v2, 0xac44

    if-ne v1, v2, :cond_1

    .line 615
    sget-object v2, Landroidx/media3/extractor/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    aget v2, v2, v0

    rem-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    return v2

    .line 617
    :cond_1
    sget-object v2, Landroidx/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v2, v2, v0

    .line 618
    .local v2, "bitrate":I
    const/16 v3, 0x7d00

    if-ne v1, v3, :cond_2

    .line 619
    mul-int/lit8 v3, v2, 0x6

    return v3

    .line 621
    :cond_2
    mul-int/lit8 v3, v2, 0x4

    return v3

    .line 611
    .end local v1    # "sampleRate":I
    .end local v2    # "bitrate":I
    :cond_3
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public static parseAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 8
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Landroidx/media3/common/DrmInitData;

    .line 181
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 182
    .local v0, "dataBitArray":Landroidx/media3/common/util/ParsableBitArray;
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 184
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 185
    .local v1, "fscod":I
    sget-object v2, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v2, v2, v1

    .line 186
    .local v2, "sampleRate":I
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 187
    sget-object v3, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    aget v3, v3, v4

    .line 188
    .local v3, "channelCount":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    add-int/lit8 v3, v3, 0x1

    .line 191
    :cond_0
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 192
    .local v4, "halfFrmsizecod":I
    sget-object v5, Landroidx/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v5, v5, v4

    mul-int/lit16 v5, v5, 0x3e8

    .line 194
    .local v5, "constantBitrate":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 195
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v6

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 196
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 197
    invoke-virtual {v6, p1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 198
    const-string v7, "audio/ac3"

    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 199
    invoke-virtual {v6, v3}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 200
    invoke-virtual {v6, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 201
    invoke-virtual {v6, p3}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 202
    invoke-virtual {v6, p2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 203
    invoke-virtual {v6, v5}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 204
    invoke-virtual {v6, v5}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 205
    invoke-virtual {v6}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v6

    .line 196
    return-object v6
.end method

.method public static parseAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 538
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 539
    .local v0, "isEac3":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 540
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v2, v2, 0x6

    .line 541
    .local v2, "fscod":I
    if-ne v2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    .line 542
    .local v1, "numblkscod":I
    :goto_1
    sget-object v3, Landroidx/media3/extractor/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v3, v3, v1

    mul-int/lit16 v3, v3, 0x100

    return v3

    .line 544
    .end local v1    # "numblkscod":I
    .end local v2    # "fscod":I
    :cond_2
    const/16 v1, 0x600

    return v1
.end method

.method public static parseAc3SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;
    .locals 31
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v1

    .line 282
    .local v1, "initialPosition":I
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 284
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0xa

    if-le v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 285
    .local v3, "isEac3":Z
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 287
    const/4 v6, -0x1

    .line 295
    .local v6, "streamType":I
    const/16 v7, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_2a

    .line 297
    const/16 v11, 0x10

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 298
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 309
    const/4 v6, -0x1

    goto :goto_1

    .line 306
    :pswitch_0
    const/4 v6, 0x2

    .line 307
    goto :goto_1

    .line 303
    :pswitch_1
    const/4 v6, 0x1

    .line 304
    goto :goto_1

    .line 300
    :pswitch_2
    const/4 v6, 0x0

    .line 301
    nop

    .line 312
    :goto_1
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 313
    const/16 v12, 0xb

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    add-int/2addr v12, v4

    mul-int/2addr v12, v10

    .line 314
    .local v12, "frameSize":I
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 317
    .local v13, "fscod":I
    if-ne v13, v9, :cond_1

    .line 318
    const/4 v14, 0x3

    .line 319
    .local v14, "numblkscod":I
    sget-object v15, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v16

    aget v15, v15, v16

    .line 320
    .local v15, "sampleRate":I
    const/16 v16, 0x6

    move/from16 v8, v16

    .local v16, "audioBlocks":I
    goto :goto_2

    .line 322
    .end local v14    # "numblkscod":I
    .end local v15    # "sampleRate":I
    .end local v16    # "audioBlocks":I
    :cond_1
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 323
    .restart local v14    # "numblkscod":I
    sget-object v15, Landroidx/media3/extractor/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v16, v15, v14

    .line 324
    .restart local v16    # "audioBlocks":I
    sget-object v15, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v15, v15, v13

    move/from16 v8, v16

    .line 326
    .end local v16    # "audioBlocks":I
    .local v8, "audioBlocks":I
    .restart local v15    # "sampleRate":I
    :goto_2
    mul-int/lit16 v10, v8, 0x100

    .line 327
    .local v10, "sampleCount":I
    invoke-static {v12, v15, v8}, Landroidx/media3/extractor/Ac3Util;->calculateEac3Bitrate(III)I

    move-result v18

    .line 328
    .local v18, "bitrate":I
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 329
    .local v11, "acmod":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v20

    .line 330
    .local v20, "lfeon":Z
    sget-object v21, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v21, v21, v11

    add-int v21, v21, v20

    .line 331
    .local v21, "channelCount":I
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 332
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 333
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 335
    :cond_2
    if-nez v11, :cond_3

    .line 336
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 337
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 338
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 341
    :cond_3
    if-ne v6, v4, :cond_4

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 342
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 344
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 345
    const/4 v5, 0x2

    if-le v11, v5, :cond_5

    .line 346
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 348
    :cond_5
    and-int/lit8 v17, v11, 0x1

    if-eqz v17, :cond_6

    if-le v11, v5, :cond_6

    .line 349
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_3

    .line 348
    :cond_6
    const/4 v5, 0x6

    .line 351
    :goto_3
    and-int/lit8 v16, v11, 0x4

    if-eqz v16, :cond_7

    .line 352
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 354
    :cond_7
    if-eqz v20, :cond_8

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 355
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 357
    :cond_8
    if-nez v6, :cond_1f

    .line 358
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 359
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_4

    .line 358
    :cond_9
    const/4 v5, 0x6

    .line 361
    :goto_4
    if-nez v11, :cond_a

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 362
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 364
    :cond_a
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 365
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 367
    :cond_b
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 368
    .local v7, "mixdef":I
    if-ne v7, v4, :cond_c

    .line 369
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_7

    .line 370
    :cond_c
    if-ne v7, v5, :cond_d

    .line 371
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_7

    .line 372
    :cond_d
    if-ne v7, v9, :cond_1a

    .line 373
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 374
    .local v5, "mixdeflen":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v23

    if-eqz v23, :cond_16

    .line 375
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 376
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 377
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_5

    .line 376
    :cond_e
    const/4 v4, 0x4

    .line 379
    :goto_5
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 380
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 382
    :cond_f
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 383
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 385
    :cond_10
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 386
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 388
    :cond_11
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 389
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 391
    :cond_12
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 392
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 394
    :cond_13
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_14

    .line 395
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 397
    :cond_14
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 398
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 399
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 401
    :cond_15
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 402
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 406
    :cond_16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 407
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 408
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 409
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 410
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 411
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_6

    .line 410
    :cond_17
    const/16 v4, 0x8

    goto :goto_6

    .line 408
    :cond_18
    const/16 v4, 0x8

    goto :goto_6

    .line 406
    :cond_19
    const/16 v4, 0x8

    .line 415
    :goto_6
    add-int/lit8 v19, v5, 0x2

    move/from16 v24, v4

    mul-int/lit8 v4, v19, 0x8

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 416
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 418
    .end local v5    # "mixdeflen":I
    :cond_1a
    :goto_7
    const/4 v5, 0x2

    if-ge v11, v5, :cond_1c

    .line 419
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/16 v5, 0xe

    if-eqz v4, :cond_1b

    .line 420
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 422
    :cond_1b
    if-nez v11, :cond_1c

    .line 423
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 424
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 428
    :cond_1c
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 429
    if-nez v14, :cond_1d

    .line 430
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_9

    .line 432
    :cond_1d
    const/4 v4, 0x0

    .local v4, "blk":I
    :goto_8
    if-ge v4, v8, :cond_1f

    .line 433
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 434
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 432
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 441
    .end local v4    # "blk":I
    .end local v7    # "mixdef":I
    :cond_1f
    :goto_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 442
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 443
    const/4 v5, 0x2

    if-ne v11, v5, :cond_20

    .line 444
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 446
    :cond_20
    const/4 v2, 0x6

    if-lt v11, v2, :cond_21

    .line 447
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 449
    :cond_21
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 450
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_a

    .line 449
    :cond_22
    const/16 v4, 0x8

    .line 452
    :goto_a
    if-nez v11, :cond_23

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 453
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 455
    :cond_23
    if-ge v13, v9, :cond_24

    .line 456
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 459
    :cond_24
    if-nez v6, :cond_25

    if-eq v14, v9, :cond_25

    .line 460
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 462
    :cond_25
    const/4 v5, 0x2

    if-ne v6, v5, :cond_28

    if-eq v14, v9, :cond_27

    .line 463
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_b

    :cond_26
    const/4 v5, 0x6

    goto :goto_c

    .line 464
    :cond_27
    :goto_b
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_c

    .line 462
    :cond_28
    const/4 v5, 0x6

    .line 466
    :goto_c
    const-string v2, "audio/eac3"

    .line 467
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 468
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 469
    .local v4, "addbsil":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-ne v7, v5, :cond_29

    .line 470
    const-string v2, "audio/eac3-joc"

    .line 473
    .end local v4    # "addbsil":I
    .end local v8    # "audioBlocks":I
    .end local v13    # "fscod":I
    .end local v14    # "numblkscod":I
    :cond_29
    move/from16 v29, v18

    move-object/from16 v23, v2

    move/from16 v24, v6

    move/from16 v28, v10

    move/from16 v27, v12

    move/from16 v26, v15

    move/from16 v25, v21

    goto :goto_f

    .line 474
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v10    # "sampleCount":I
    .end local v11    # "acmod":I
    .end local v12    # "frameSize":I
    .end local v15    # "sampleRate":I
    .end local v18    # "bitrate":I
    .end local v20    # "lfeon":Z
    .end local v21    # "channelCount":I
    :cond_2a
    const-string v2, "audio/ac3"

    .line 475
    .restart local v2    # "mimeType":Ljava/lang/String;
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 476
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 477
    .local v4, "fscod":I
    if-ne v4, v9, :cond_2b

    .line 480
    const/4 v2, 0x0

    .line 482
    :cond_2b
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 483
    .local v5, "frmsizecod":I
    sget-object v7, Landroidx/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    div-int/lit8 v8, v5, 0x2

    aget v7, v7, v8

    mul-int/lit16 v7, v7, 0x3e8

    .line 484
    .local v7, "bitrate":I
    invoke-static {v4, v5}, Landroidx/media3/extractor/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v12

    .line 485
    .restart local v12    # "frameSize":I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 486
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 487
    .restart local v11    # "acmod":I
    and-int/lit8 v8, v11, 0x1

    if-eqz v8, :cond_2c

    const/4 v8, 0x1

    if-eq v11, v8, :cond_2c

    .line 488
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_d

    .line 487
    :cond_2c
    const/4 v8, 0x2

    .line 490
    :goto_d
    and-int/lit8 v9, v11, 0x4

    if-eqz v9, :cond_2d

    .line 491
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 493
    :cond_2d
    if-ne v11, v8, :cond_2e

    .line 494
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 497
    :cond_2e
    sget-object v8, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v8, v8

    if-ge v4, v8, :cond_2f

    sget-object v8, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v8, v8, v4

    goto :goto_e

    :cond_2f
    const/4 v8, -0x1

    :goto_e
    move v15, v8

    .line 498
    .restart local v15    # "sampleRate":I
    const/16 v10, 0x600

    .line 499
    .restart local v10    # "sampleCount":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v20

    .line 500
    .restart local v20    # "lfeon":Z
    sget-object v8, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v8, v8, v11

    add-int v21, v8, v20

    move/from16 v29, v7

    move-object/from16 v23, v2

    move/from16 v24, v6

    move/from16 v28, v10

    move/from16 v27, v12

    move/from16 v26, v15

    move/from16 v25, v21

    .line 502
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v4    # "fscod":I
    .end local v5    # "frmsizecod":I
    .end local v6    # "streamType":I
    .end local v7    # "bitrate":I
    .end local v10    # "sampleCount":I
    .end local v12    # "frameSize":I
    .end local v15    # "sampleRate":I
    .local v23, "mimeType":Ljava/lang/String;
    .local v24, "streamType":I
    .local v25, "channelCount":I
    .local v26, "sampleRate":I
    .local v27, "frameSize":I
    .local v28, "sampleCount":I
    .local v29, "bitrate":I
    :goto_f
    new-instance v22, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;

    const/16 v30, 0x0

    invoke-direct/range {v22 .. v30}, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIIILandroidx/media3/extractor/Ac3Util$1;)V

    return-object v22

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 4
    .param p0, "data"    # [B

    .line 513
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 514
    const/4 v0, -0x1

    return v0

    .line 517
    :cond_0
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 518
    .local v0, "isEac3":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 519
    const/4 v1, 0x2

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x8

    .line 520
    .local v3, "frmsiz":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    .line 521
    .end local v3    # "frmsiz":I
    .local v2, "frmsiz":I
    add-int/lit8 v3, v2, 0x1

    mul-int/2addr v3, v1

    return v3

    .line 523
    .end local v2    # "frmsiz":I
    :cond_2
    const/4 v2, 0x4

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xc0

    shr-int/lit8 v1, v3, 0x6

    .line 524
    .local v1, "fscod":I
    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3f

    .line 525
    .local v2, "frmsizecod":I
    invoke-static {v1, v2}, Landroidx/media3/extractor/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v3

    return v3
.end method

.method public static parseEAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 10
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Landroidx/media3/common/DrmInitData;

    .line 223
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 224
    .local v0, "dataBitArray":Landroidx/media3/common/util/ParsableBitArray;
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 226
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 227
    .local v1, "peakBitrate":I
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 230
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 231
    .local v3, "fscod":I
    sget-object v4, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v4, v4, v3

    .line 232
    .local v4, "sampleRate":I
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 233
    sget-object v5, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    aget v5, v5, v6

    .line 234
    .local v5, "channelCount":I
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-eqz v7, :cond_0

    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 239
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 240
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 241
    .local v2, "numDepSub":I
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 242
    if-lez v2, :cond_2

    .line 243
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 246
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 247
    add-int/lit8 v5, v5, 0x2

    .line 249
    :cond_1
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 252
    :cond_2
    const-string v7, "audio/eac3"

    .line 253
    .local v7, "mimeType":Ljava/lang/String;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v8

    const/4 v9, 0x7

    if-le v8, v9, :cond_3

    .line 254
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 255
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    if-eqz v6, :cond_3

    .line 256
    const-string v7, "audio/eac3-joc"

    .line 260
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 261
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v6

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 262
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 263
    invoke-virtual {v6, p1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 264
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 265
    invoke-virtual {v6, v5}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 266
    invoke-virtual {v6, v4}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 267
    invoke-virtual {v6, p3}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 268
    invoke-virtual {v6, p2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 269
    invoke-virtual {v6, v1}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 270
    invoke-virtual {v6}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v6

    .line 262
    return-object v6
.end method

.method public static parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 600
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 601
    .local v0, "isMlp":Z
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    if-eqz v0, :cond_1

    const/16 v2, 0x9

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x7

    const/16 v2, 0x28

    shl-int v1, v2, v1

    return v1
.end method

.method public static parseTrueHdSyncframeAudioSampleCount([B)I
    .locals 5
    .param p0, "syncframe"    # [B

    .line 580
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    const/4 v2, -0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_3

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_3

    const/4 v1, 0x7

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xfe

    const/16 v4, 0xba

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 586
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    .line 587
    .local v3, "isMlp":Z
    :cond_1
    if-eqz v3, :cond_2

    const/16 v2, 0x9

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    aget-byte v2, p0, v2

    shr-int/lit8 v0, v2, 0x4

    and-int/2addr v0, v1

    const/16 v1, 0x28

    shl-int v0, v1, v0

    return v0

    .line 584
    .end local v3    # "isMlp":Z
    :cond_3
    :goto_1
    return v3
.end method
