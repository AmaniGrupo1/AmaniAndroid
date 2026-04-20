.class public final Landroidx/media3/extractor/DtsUtil;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/DtsUtil$DtsHeader;,
        Landroidx/media3/extractor/DtsUtil$FrameType;,
        Landroidx/media3/extractor/DtsUtil$DtsAudioMimeType;
    }
.end annotation


# static fields
.field private static final CHANNELS_BY_AMODE:[I

.field public static final DTS_EXPRESS_MAX_RATE_BITS_PER_SECOND:I = 0xbb800

.field public static final DTS_HD_MAX_RATE_BYTES_PER_SECOND:I = 0x225510

.field public static final DTS_MAX_RATE_BYTES_PER_SECOND:I = 0x2ee00

.field private static final FIRST_BYTE_14B_BE:B = 0x1ft

.field private static final FIRST_BYTE_14B_LE:B = -0x1t

.field private static final FIRST_BYTE_BE:B = 0x7ft

.field private static final FIRST_BYTE_EXTSS_BE:B = 0x64t

.field private static final FIRST_BYTE_EXTSS_LE:B = 0x25t

.field private static final FIRST_BYTE_LE:B = -0x2t

.field private static final FIRST_BYTE_UHD_FTOC_NONSYNC_BE:B = 0x71t

.field private static final FIRST_BYTE_UHD_FTOC_NONSYNC_LE:B = -0x18t

.field private static final FIRST_BYTE_UHD_FTOC_SYNC_BE:B = 0x40t

.field private static final FIRST_BYTE_UHD_FTOC_SYNC_LE:B = -0xet

.field public static final FRAME_TYPE_CORE:I = 0x1

.field public static final FRAME_TYPE_EXTENSION_SUBSTREAM:I = 0x2

.field public static final FRAME_TYPE_UHD_NON_SYNC:I = 0x4

.field public static final FRAME_TYPE_UHD_SYNC:I = 0x3

.field public static final FRAME_TYPE_UNKNOWN:I = 0x0

.field private static final SAMPLE_RATE_BY_INDEX:[I

.field private static final SAMPLE_RATE_BY_SFREQ:[I

.field private static final SYNC_VALUE_14B_BE:I = 0x1fffe800

.field private static final SYNC_VALUE_14B_LE:I = -0xe0ff18

.field private static final SYNC_VALUE_BE:I = 0x7ffe8001

.field private static final SYNC_VALUE_EXTSS_BE:I = 0x64582025

.field private static final SYNC_VALUE_EXTSS_LE:I = 0x25205864

.field private static final SYNC_VALUE_LE:I = -0x180fe80

.field private static final SYNC_VALUE_UHD_FTOC_NONSYNC_BE:I = 0x71c442e8

.field private static final SYNC_VALUE_UHD_FTOC_NONSYNC_LE:I = -0x17bd3b8f

.field private static final SYNC_VALUE_UHD_FTOC_SYNC_BE:I = 0x40411bf2

.field private static final SYNC_VALUE_UHD_FTOC_SYNC_LE:I = -0xde4bec0

.field private static final TWICE_BITRATE_KBPS_BY_RATE:[I

.field private static final UHD_AUDIO_CHUNK_ID_LENGTH_TABLE:[I

.field private static final UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE:[I

.field private static final UHD_FTOC_PAYLOAD_LENGTH_TABLE:[I

.field private static final UHD_HEADER_SIZE_LENGTH_TABLE:[I

.field private static final UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 194
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/DtsUtil;->CHANNELS_BY_AMODE:[I

    .line 198
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media3/extractor/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    .line 205
    const/16 v1, 0x1d

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroidx/media3/extractor/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    .line 215
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Landroidx/media3/extractor/DtsUtil;->SAMPLE_RATE_BY_INDEX:[I

    .line 225
    const/4 v1, 0x5

    const/16 v2, 0x8

    const/16 v3, 0xa

    const/16 v4, 0xc

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Landroidx/media3/extractor/DtsUtil;->UHD_FTOC_PAYLOAD_LENGTH_TABLE:[I

    .line 228
    const/16 v5, 0xf

    const/4 v6, 0x6

    const/16 v7, 0x9

    filled-new-array {v6, v7, v4, v5}, [I

    move-result-object v5

    sput-object v5, Landroidx/media3/extractor/DtsUtil;->UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE:[I

    .line 231
    const/4 v5, 0x2

    const/4 v8, 0x4

    filled-new-array {v5, v8, v6, v2}, [I

    move-result-object v5

    sput-object v5, Landroidx/media3/extractor/DtsUtil;->UHD_AUDIO_CHUNK_ID_LENGTH_TABLE:[I

    .line 234
    const/16 v5, 0xb

    const/16 v6, 0xd

    filled-new-array {v7, v5, v6, v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/DtsUtil;->UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE:[I

    .line 237
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/DtsUtil;->UHD_HEADER_SIZE_LENGTH_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data

    :array_3
    .array-data 4
        0x1f40
        0x3e80
        0x7d00
        0xfa00
        0x1f400
        0x5622
        0xac44
        0x15888
        0x2b110
        0x56220
        0x2ee0
        0x5dc0
        0xbb80
        0x17700
        0x2ee00
        0x5dc00
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCrc([BI)V
    .locals 5
    .param p0, "frame"    # [B
    .param p1, "sizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 717
    const v0, 0xffff

    .line 718
    .local v0, "initialValue":I
    add-int/lit8 v1, p1, -0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v0

    add-int/lit8 v2, p1, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 720
    .local v1, "extractedCrc":I
    const/4 v2, 0x0

    add-int/lit8 v3, p1, -0x2

    invoke-static {p0, v2, v3, v0}, Landroidx/media3/common/util/Util;->crc16([BIII)I

    move-result v2

    .line 721
    .local v2, "calculatedCrc":I
    if-ne v1, v2, :cond_0

    .line 725
    return-void

    .line 722
    :cond_0
    const-string v3, "CRC check failed"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3
.end method

.method public static getDtsFrameSize([B)I
    .locals 5
    .param p0, "data"    # [B

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "uses14BitPerWord":Z
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/4 v4, 0x4

    sparse-switch v1, :sswitch_data_0

    .line 391
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v4

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .local v1, "fsize":I
    goto :goto_0

    .line 379
    .end local v1    # "fsize":I
    :sswitch_0
    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    const/16 v2, 0x8

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 380
    .restart local v1    # "fsize":I
    const/4 v0, 0x1

    .line 381
    goto :goto_0

    .line 386
    .end local v1    # "fsize":I
    :sswitch_1
    aget-byte v1, p0, v3

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    const/16 v2, 0x9

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 387
    .restart local v1    # "fsize":I
    const/4 v0, 0x1

    .line 388
    goto :goto_0

    .line 383
    .end local v1    # "fsize":I
    :sswitch_2
    aget-byte v1, p0, v4

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v4

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 384
    .restart local v1    # "fsize":I
    nop

    .line 395
    :goto_0
    if-eqz v0, :cond_0

    mul-int/lit8 v2, v1, 0x10

    div-int/lit8 v2, v2, 0xe

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static getFrameType(I)I
    .locals 1
    .param p0, "word"    # I

    .line 244
    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_7

    const v0, -0x180fe80

    if-eq p0, v0, :cond_7

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_7

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_0

    goto :goto_3

    .line 249
    :cond_0
    const v0, 0x64582025

    if-eq p0, v0, :cond_6

    const v0, 0x25205864

    if-ne p0, v0, :cond_1

    goto :goto_2

    .line 251
    :cond_1
    const v0, 0x40411bf2

    if-eq p0, v0, :cond_5

    const v0, -0xde4bec0

    if-ne p0, v0, :cond_2

    goto :goto_1

    .line 253
    :cond_2
    const v0, 0x71c442e8

    if-eq p0, v0, :cond_4

    const v0, -0x17bd3b8f

    if-ne p0, v0, :cond_3

    goto :goto_0

    .line 256
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 254
    :cond_4
    :goto_0
    const/4 v0, 0x4

    return v0

    .line 252
    :cond_5
    :goto_1
    const/4 v0, 0x3

    return v0

    .line 250
    :cond_6
    :goto_2
    const/4 v0, 0x2

    return v0

    .line 248
    :cond_7
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method private static getNormalizedFrame([B)Landroidx/media3/common/util/ParsableBitArray;
    .locals 4
    .param p0, "frame"    # [B

    .line 752
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_3

    aget-byte v1, p0, v0

    const/16 v2, 0x64

    if-eq v1, v2, :cond_3

    aget-byte v1, p0, v0

    const/16 v2, 0x40

    if-eq v1, v2, :cond_3

    aget-byte v1, p0, v0

    const/16 v2, 0x71

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 760
    :cond_0
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 761
    invoke-static {p0}, Landroidx/media3/extractor/DtsUtil;->isLittleEndianFrameHeader([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 764
    aget-byte v2, p0, v1

    .line 765
    .local v2, "temp":B
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, p0, v1

    .line 766
    add-int/lit8 v3, v1, 0x1

    aput-byte v2, p0, v3

    .line 763
    .end local v2    # "temp":B
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 769
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 770
    .local v1, "frameBits":Landroidx/media3/common/util/ParsableBitArray;
    aget-byte v0, p0, v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2

    .line 772
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 773
    .local v0, "scratchBits":Landroidx/media3/common/util/ParsableBitArray;
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 774
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 775
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ParsableBitArray;->putInt(II)V

    goto :goto_1

    .line 778
    .end local v0    # "scratchBits":Landroidx/media3/common/util/ParsableBitArray;
    :cond_2
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->reset([B)V

    .line 779
    return-object v1

    .line 757
    .end local v1    # "frameBits":Landroidx/media3/common/util/ParsableBitArray;
    :cond_3
    :goto_2
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    return-object v0
.end method

.method private static isLittleEndianFrameHeader([B)Z
    .locals 3
    .param p0, "frameHeader"    # [B

    .line 783
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, -0xe

    if-eq v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, -0x18

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isSampleDtsHd(Landroidx/media3/extractor/ExtractorInput;I)Z
    .locals 8
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 689
    .local v0, "sampleData":Landroidx/media3/common/util/ParsableByteArray;
    nop

    .line 690
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    .line 689
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v2, p1, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    return v2

    .line 693
    :cond_0
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 694
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->peekInt()I

    move-result v1

    .line 695
    .local v1, "word":I
    invoke-static {v1}, Landroidx/media3/extractor/DtsUtil;->getFrameType(I)I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 696
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    .line 697
    return v2

    .line 699
    :cond_1
    new-array v4, v5, [B

    .line 700
    .local v4, "header":[B
    invoke-virtual {v0, v4, v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 701
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 702
    invoke-static {v4}, Landroidx/media3/extractor/DtsUtil;->getDtsFrameSize([B)I

    move-result v5

    .line 703
    .local v5, "frameSize":I
    if-lez v5, :cond_4

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    add-int/lit8 v7, v5, 0x4

    if-ge v6, v7, :cond_2

    goto :goto_0

    .line 706
    :cond_2
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 707
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 708
    invoke-static {v1}, Landroidx/media3/extractor/DtsUtil;->getFrameType(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v2, v3

    :cond_3
    return v2

    .line 704
    :cond_4
    :goto_0
    return v2

    .line 710
    .end local v4    # "header":[B
    .end local v5    # "frameSize":I
    :cond_5
    return v2
.end method

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0xde4bec0

    if-eq v1, v2, :cond_2

    .line 338
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0x17bd3b8f

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 342
    :cond_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v1, 0x25205864

    if-ne v0, v1, :cond_1

    .line 345
    const/16 v0, 0x1000

    return v0

    .line 349
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 351
    .local v0, "position":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 363
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xfc

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .local v1, "nblks":I
    goto :goto_0

    .line 359
    .end local v1    # "nblks":I
    :sswitch_0
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v0, 0x6

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .line 360
    .restart local v1    # "nblks":I
    goto :goto_0

    .line 356
    .end local v1    # "nblks":I
    :sswitch_1
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .line 357
    .restart local v1    # "nblks":I
    goto :goto_0

    .line 353
    .end local v1    # "nblks":I
    :sswitch_2
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xfc

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .line 354
    .restart local v1    # "nblks":I
    nop

    .line 365
    :goto_0
    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v2, v2, 0x20

    return v2

    .line 341
    .end local v0    # "position":I
    .end local v1    # "nblks":I
    :cond_2
    :goto_1
    const/16 v0, 0x400

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseDtsAudioSampleCount([B)I
    .locals 5
    .param p0, "data"    # [B

    .line 312
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    sparse-switch v0, :sswitch_data_0

    .line 324
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .local v0, "nblks":I
    goto :goto_0

    .line 320
    .end local v0    # "nblks":I
    :sswitch_0
    aget-byte v0, p0, v3

    and-int/2addr v0, v1

    shl-int/2addr v0, v4

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x3c

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 321
    .restart local v0    # "nblks":I
    goto :goto_0

    .line 317
    .end local v0    # "nblks":I
    :sswitch_1
    aget-byte v0, p0, v4

    and-int/2addr v0, v1

    shl-int/2addr v0, v4

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3c

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 318
    .restart local v0    # "nblks":I
    goto :goto_0

    .line 314
    .end local v0    # "nblks":I
    :sswitch_2
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 315
    .restart local v0    # "nblks":I
    nop

    .line 326
    :goto_0
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x20

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseDtsFormat([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 9
    .param p0, "frame"    # [B
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "roleFlags"    # I
    .param p4, "containerMimeType"    # Ljava/lang/String;
    .param p5, "drmInitData"    # Landroidx/media3/common/DrmInitData;

    .line 278
    invoke-static {p0}, Landroidx/media3/extractor/DtsUtil;->getNormalizedFrame([B)Landroidx/media3/common/util/ParsableBitArray;

    move-result-object v0

    .line 279
    .local v0, "frameBits":Landroidx/media3/common/util/ParsableBitArray;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 280
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 281
    .local v1, "amode":I
    sget-object v2, Landroidx/media3/extractor/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v2, v2, v1

    .line 282
    .local v2, "channelCount":I
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 283
    .local v3, "sfreq":I
    sget-object v4, Landroidx/media3/extractor/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v4, v4, v3

    .line 284
    .local v4, "sampleRate":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 286
    .local v5, "rate":I
    sget-object v6, Landroidx/media3/extractor/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v6, v6

    const/4 v7, 0x2

    if-lt v5, v6, :cond_0

    .line 287
    const/4 v6, -0x1

    goto :goto_0

    .line 288
    :cond_0
    sget-object v6, Landroidx/media3/extractor/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    aget v6, v6, v5

    mul-int/lit16 v6, v6, 0x3e8

    div-int/2addr v6, v7

    :goto_0
    nop

    .line 289
    .local v6, "bitrate":I
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 290
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    add-int/2addr v2, v7

    .line 291
    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 292
    invoke-virtual {v7, p1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 293
    invoke-virtual {v7, p4}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 294
    const-string v8, "audio/vnd.dts"

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 295
    invoke-virtual {v7, v6}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 296
    invoke-virtual {v7, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 297
    invoke-virtual {v7, v4}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 298
    invoke-virtual {v7, p5}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 299
    invoke-virtual {v7, p2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 300
    invoke-virtual {v7, p3}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 301
    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v7

    .line 291
    return-object v7
.end method

.method public static parseDtsHdHeader([B)Landroidx/media3/extractor/DtsUtil$DtsHeader;
    .locals 22
    .param p0, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 406
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/DtsUtil;->getNormalizedFrame([B)Landroidx/media3/common/util/ParsableBitArray;

    move-result-object v0

    .line 407
    .local v0, "headerBits":Landroidx/media3/common/util/ParsableBitArray;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 409
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 412
    .local v2, "extensionSubstreamIndex":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 413
    const/16 v3, 0x8

    .line 414
    .local v3, "headerSizeInBits":I
    const/16 v4, 0x10

    .local v4, "extensionSubstreamFrameSizeBits":I
    goto :goto_0

    .line 416
    .end local v3    # "headerSizeInBits":I
    .end local v4    # "extensionSubstreamFrameSizeBits":I
    :cond_0
    const/16 v3, 0xc

    .line 417
    .restart local v3    # "headerSizeInBits":I
    const/16 v4, 0x14

    .line 419
    .restart local v4    # "extensionSubstreamFrameSizeBits":I
    :goto_0
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 420
    nop

    .line 421
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v11, v5, 0x1

    .line 427
    .local v11, "extensionSubstreamFrameSize":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 428
    .local v5, "staticFieldsPresent":Z
    const/16 v7, 0x8

    if-eqz v5, :cond_6

    .line 429
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 430
    .local v8, "referenceClockCode":I
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    add-int/2addr v10, v6

    mul-int/lit16 v10, v10, 0x200

    .line 432
    .local v10, "extensionSubstreamFrameDurationCode":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 433
    const/16 v12, 0x24

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 436
    :cond_1
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    add-int/2addr v12, v6

    .line 437
    .local v12, "audioPresentationsCount":I
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    add-int/2addr v9, v6

    .line 438
    .local v9, "assetsCount":I
    if-ne v12, v6, :cond_5

    if-ne v9, v6, :cond_5

    .line 444
    add-int/lit8 v13, v2, 0x1

    .line 445
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 447
    .local v13, "activeExtensionSubstreamMask":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    add-int/lit8 v15, v2, 0x1

    if-ge v14, v15, :cond_3

    .line 448
    shr-int v15, v13, v14

    and-int/2addr v15, v6

    if-ne v15, v6, :cond_2

    .line 449
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 447
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 453
    .end local v14    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 454
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 455
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    add-int/2addr v14, v6

    shl-int/2addr v14, v1

    .line 456
    .local v14, "mixerOutputMaskBits":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v1, v6

    .line 458
    .local v1, "mixerOutputConfigurationCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v1, :cond_4

    .line 459
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 458
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 462
    .end local v1    # "mixerOutputConfigurationCount":I
    .end local v12    # "audioPresentationsCount":I
    .end local v13    # "activeExtensionSubstreamMask":I
    .end local v14    # "mixerOutputMaskBits":I
    .end local v15    # "i":I
    :cond_4
    move v1, v8

    move v8, v10

    goto :goto_3

    .line 439
    .restart local v12    # "audioPresentationsCount":I
    :cond_5
    const-string v1, "Multiple audio presentations or assets not supported"

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 465
    .end local v8    # "referenceClockCode":I
    .end local v9    # "assetsCount":I
    .end local v10    # "extensionSubstreamFrameDurationCode":I
    .end local v12    # "audioPresentationsCount":I
    :cond_6
    const/4 v8, -0x1

    .line 466
    .restart local v8    # "referenceClockCode":I
    const/4 v10, 0x0

    move v1, v8

    move v8, v10

    .line 470
    .local v1, "referenceClockCode":I
    .local v8, "extensionSubstreamFrameDurationCode":I
    :goto_3
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 471
    const v9, -0x7fffffff

    .line 472
    .local v9, "sampleRate":I
    const/4 v10, -0x1

    .line 475
    .local v10, "channelCount":I
    const/16 v12, 0xc

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 476
    if-eqz v5, :cond_a

    .line 477
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v12

    const/4 v13, 0x4

    if-eqz v12, :cond_7

    .line 478
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 480
    :cond_7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 481
    const/16 v12, 0x18

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 483
    :cond_8
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 484
    const/16 v12, 0xa

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    add-int/2addr v12, v6

    .line 485
    .local v12, "infoTextByteSize":I
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 487
    .end local v12    # "infoTextByteSize":I
    :cond_9
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 488
    sget-object v12, Landroidx/media3/extractor/DtsUtil;->SAMPLE_RATE_BY_INDEX:[I

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    aget v9, v12, v13

    .line 489
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v10, v7, 0x1

    move/from16 v21, v10

    move v10, v9

    move/from16 v9, v21

    goto :goto_4

    .line 476
    :cond_a
    move/from16 v21, v10

    move v10, v9

    move/from16 v9, v21

    .line 493
    .local v9, "channelCount":I
    .local v10, "sampleRate":I
    :goto_4
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 494
    .local v6, "frameDurationUs":J
    if-eqz v5, :cond_b

    .line 497
    packed-switch v1, :pswitch_data_0

    .line 508
    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "extensionSubstreamIndex":I
    .end local v3    # "headerSizeInBits":I
    .local v19, "extensionSubstreamIndex":I
    .local v20, "headerSizeInBits":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported reference clock code in DTS HD header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2

    .line 505
    .end local v19    # "extensionSubstreamIndex":I
    .end local v20    # "headerSizeInBits":I
    .restart local v2    # "extensionSubstreamIndex":I
    .restart local v3    # "headerSizeInBits":I
    :pswitch_0
    const v12, 0xbb80

    .line 506
    .local v12, "referenceClockFrequency":I
    goto :goto_5

    .line 502
    .end local v12    # "referenceClockFrequency":I
    :pswitch_1
    const v12, 0xac44

    .line 503
    .restart local v12    # "referenceClockFrequency":I
    goto :goto_5

    .line 499
    .end local v12    # "referenceClockFrequency":I
    :pswitch_2
    const/16 v12, 0x7d00

    .line 500
    .restart local v12    # "referenceClockFrequency":I
    nop

    .line 513
    :goto_5
    int-to-long v13, v8

    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "extensionSubstreamIndex":I
    .end local v3    # "headerSizeInBits":I
    .restart local v19    # "extensionSubstreamIndex":I
    .restart local v20    # "headerSizeInBits":I
    int-to-long v2, v12

    .line 514
    const-wide/32 v15, 0xf4240

    move-wide/from16 v17, v2

    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    move-wide v12, v6

    goto :goto_6

    .line 494
    .end local v12    # "referenceClockFrequency":I
    .end local v19    # "extensionSubstreamIndex":I
    .end local v20    # "headerSizeInBits":I
    .restart local v2    # "extensionSubstreamIndex":I
    .restart local v3    # "headerSizeInBits":I
    :cond_b
    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "extensionSubstreamIndex":I
    .end local v3    # "headerSizeInBits":I
    .restart local v19    # "extensionSubstreamIndex":I
    .restart local v20    # "headerSizeInBits":I
    move-wide v12, v6

    .line 517
    .end local v6    # "frameDurationUs":J
    .local v12, "frameDurationUs":J
    :goto_6
    new-instance v7, Landroidx/media3/extractor/DtsUtil$DtsHeader;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v2, v8

    .end local v8    # "extensionSubstreamFrameDurationCode":I
    .local v2, "extensionSubstreamFrameDurationCode":I
    const-string v8, "audio/vnd.dts.hd;profile=lbr"

    invoke-direct/range {v7 .. v15}, Landroidx/media3/extractor/DtsUtil$DtsHeader;-><init>(Ljava/lang/String;IIIJILandroidx/media3/extractor/DtsUtil$1;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseDtsHdHeaderSize([B)I
    .locals 3
    .param p0, "headerPrefix"    # [B

    .line 534
    invoke-static {p0}, Landroidx/media3/extractor/DtsUtil;->getNormalizedFrame([B)Landroidx/media3/common/util/ParsableBitArray;

    move-result-object v0

    .line 535
    .local v0, "headerPrefixBits":Landroidx/media3/common/util/ParsableBitArray;
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 537
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 539
    .local v1, "headerBits":I
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static parseDtsUhdHeader([BLjava/util/concurrent/atomic/AtomicInteger;)Landroidx/media3/extractor/DtsUtil$DtsHeader;
    .locals 25
    .param p0, "header"    # [B
    .param p1, "uhdAudioChunkId"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 556
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/DtsUtil;->getNormalizedFrame([B)Landroidx/media3/common/util/ParsableBitArray;

    move-result-object v0

    .line 557
    .local v0, "headerBits":Landroidx/media3/common/util/ParsableBitArray;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 558
    .local v1, "syncWord":I
    const v2, 0x40411bf2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 560
    .local v2, "syncFrameFlag":Z
    :goto_0
    sget-object v5, Landroidx/media3/extractor/DtsUtil;->UHD_FTOC_PAYLOAD_LENGTH_TABLE:[I

    .line 561
    invoke-static {v0, v5, v4}, Landroidx/media3/extractor/DtsUtil;->parseUnsignedVarInt(Landroidx/media3/common/util/ParsableBitArray;[IZ)I

    move-result v5

    add-int/2addr v5, v4

    .line 566
    .local v5, "ftocPayloadInBytes":I
    const v6, -0x7fffffff

    .line 567
    .local v6, "sampleRate":I
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 568
    .local v7, "frameDurationUs":J
    if-eqz v2, :cond_3

    .line 570
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 576
    move-object/from16 v9, p0

    invoke-static {v9, v5}, Landroidx/media3/extractor/DtsUtil;->checkCrc([BI)V

    .line 578
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 581
    .local v11, "baseDurationIndex":I
    const/4 v12, 0x0

    packed-switch v11, :pswitch_data_0

    .line 592
    move/from16 v24, v11

    .end local v11    # "baseDurationIndex":I
    .local v24, "baseDurationIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported base duration index in DTS UHD header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v24

    .end local v24    # "baseDurationIndex":I
    .local v4, "baseDurationIndex":I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 589
    .end local v4    # "baseDurationIndex":I
    .restart local v11    # "baseDurationIndex":I
    :pswitch_0
    const/16 v13, 0x180

    .line 590
    .local v13, "baseDuration":I
    goto :goto_1

    .line 586
    .end local v13    # "baseDuration":I
    :pswitch_1
    const/16 v13, 0x1e0

    .line 587
    .restart local v13    # "baseDuration":I
    goto :goto_1

    .line 583
    .end local v13    # "baseDuration":I
    :pswitch_2
    const/16 v13, 0x200

    .line 584
    .restart local v13    # "baseDuration":I
    nop

    .line 597
    :goto_1
    nop

    .line 598
    const/4 v14, 0x3

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    add-int/2addr v14, v4

    mul-int/2addr v14, v13

    .line 599
    .local v14, "frameDurationInClockPeriods":I
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 601
    .local v15, "clockRateIndex":I
    packed-switch v15, :pswitch_data_1

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported clock rate index in DTS UHD header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 609
    :pswitch_3
    const v12, 0xbb80

    .line 610
    .local v12, "clockRateHertz":I
    goto :goto_2

    .line 606
    .end local v12    # "clockRateHertz":I
    :pswitch_4
    const v12, 0xac44

    .line 607
    .restart local v12    # "clockRateHertz":I
    goto :goto_2

    .line 603
    .end local v12    # "clockRateHertz":I
    :pswitch_5
    const/16 v12, 0x7d00

    .line 604
    .restart local v12    # "clockRateHertz":I
    nop

    .line 617
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 619
    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 621
    :cond_1
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    shl-int v3, v4, v3

    .line 622
    .local v3, "sampleRateMultiplier":I
    mul-int v6, v12, v3

    .line 623
    move/from16 v23, v5

    .end local v5    # "ftocPayloadInBytes":I
    .local v23, "ftocPayloadInBytes":I
    int-to-long v4, v14

    move/from16 v24, v11

    .end local v11    # "baseDurationIndex":I
    .restart local v24    # "baseDurationIndex":I
    int-to-long v10, v12

    .line 624
    const-wide/32 v19, 0xf4240

    move-wide/from16 v17, v4

    move-wide/from16 v21, v10

    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    move v13, v6

    goto :goto_3

    .line 571
    .end local v3    # "sampleRateMultiplier":I
    .end local v12    # "clockRateHertz":I
    .end local v13    # "baseDuration":I
    .end local v14    # "frameDurationInClockPeriods":I
    .end local v15    # "clockRateIndex":I
    .end local v23    # "ftocPayloadInBytes":I
    .end local v24    # "baseDurationIndex":I
    .restart local v5    # "ftocPayloadInBytes":I
    :cond_2
    const-string v3, "Only supports full channel mask-based audio presentation"

    invoke-static {v3}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 568
    :cond_3
    move-object/from16 v9, p0

    move/from16 v23, v5

    .end local v5    # "ftocPayloadInBytes":I
    .restart local v23    # "ftocPayloadInBytes":I
    move v13, v6

    .line 630
    .end local v6    # "sampleRate":I
    .local v13, "sampleRate":I
    :goto_3
    const/4 v3, 0x0

    .line 631
    .local v3, "chunkPayloadBytes":I
    if-eqz v2, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    move v4, v10

    .line 632
    .local v4, "numOfMetadataChunks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v4, :cond_5

    .line 633
    sget-object v6, Landroidx/media3/extractor/DtsUtil;->UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE:[I

    .line 634
    const/4 v10, 0x1

    invoke-static {v0, v6, v10}, Landroidx/media3/extractor/DtsUtil;->parseUnsignedVarInt(Landroidx/media3/common/util/ParsableBitArray;[IZ)I

    move-result v6

    .line 636
    .local v6, "metadataChunkSize":I
    add-int/2addr v3, v6

    .line 632
    .end local v6    # "metadataChunkSize":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 641
    .end local v5    # "i":I
    :cond_5
    const/4 v5, 0x1

    .line 642
    .local v5, "numAudioChunks":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v5, :cond_8

    .line 644
    if-eqz v2, :cond_6

    .line 645
    sget-object v11, Landroidx/media3/extractor/DtsUtil;->UHD_AUDIO_CHUNK_ID_LENGTH_TABLE:[I

    .line 646
    const/4 v10, 0x1

    invoke-static {v0, v11, v10}, Landroidx/media3/extractor/DtsUtil;->parseUnsignedVarInt(Landroidx/media3/common/util/ParsableBitArray;[IZ)I

    move-result v11

    .line 645
    move-object/from16 v12, p1

    invoke-virtual {v12, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_7

    .line 644
    :cond_6
    move-object/from16 v12, p1

    const/4 v10, 0x1

    .line 650
    :goto_7
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    if-eqz v11, :cond_7

    .line 651
    sget-object v11, Landroidx/media3/extractor/DtsUtil;->UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE:[I

    invoke-static {v0, v11, v10}, Landroidx/media3/extractor/DtsUtil;->parseUnsignedVarInt(Landroidx/media3/common/util/ParsableBitArray;[IZ)I

    move-result v11

    goto :goto_8

    .line 653
    :cond_7
    const/4 v11, 0x0

    :goto_8
    nop

    .line 654
    .local v11, "audioChunkSize":I
    add-int/2addr v3, v11

    .line 642
    .end local v11    # "audioChunkSize":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v12, p1

    .line 657
    .end local v6    # "i":I
    add-int v14, v23, v3

    .line 658
    .local v14, "frameSize":I
    new-instance v10, Landroidx/media3/extractor/DtsUtil$DtsHeader;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v11, "audio/vnd.dts.uhd;profile=p2"

    const/4 v12, 0x2

    move-wide v15, v7

    .end local v7    # "frameDurationUs":J
    .local v15, "frameDurationUs":J
    invoke-direct/range {v10 .. v18}, Landroidx/media3/extractor/DtsUtil$DtsHeader;-><init>(Ljava/lang/String;IIIJILandroidx/media3/extractor/DtsUtil$1;)V

    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static parseDtsUhdHeaderSize([B)I
    .locals 3
    .param p0, "headerPrefix"    # [B

    .line 679
    invoke-static {p0}, Landroidx/media3/extractor/DtsUtil;->getNormalizedFrame([B)Landroidx/media3/common/util/ParsableBitArray;

    move-result-object v0

    .line 680
    .local v0, "headerPrefixBits":Landroidx/media3/common/util/ParsableBitArray;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 681
    sget-object v1, Landroidx/media3/extractor/DtsUtil;->UHD_HEADER_SIZE_LENGTH_TABLE:[I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/DtsUtil;->parseUnsignedVarInt(Landroidx/media3/common/util/ParsableBitArray;[IZ)I

    move-result v1

    add-int/2addr v1, v2

    return v1
.end method

.method private static parseUnsignedVarInt(Landroidx/media3/common/util/ParsableBitArray;[IZ)I
    .locals 5
    .param p0, "frameBits"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "lengths"    # [I
    .param p2, "extractAndAddFlag"    # Z

    .line 733
    const/4 v0, 0x0

    .line 734
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 735
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    add-int/lit8 v0, v0, 0x1

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 743
    .local v1, "value":I
    if-eqz p2, :cond_1

    .line 744
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 745
    aget v3, p1, v2

    const/4 v4, 0x1

    shl-int v3, v4, v3

    add-int/2addr v1, v3

    .line 744
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 748
    .end local v2    # "i":I
    :cond_1
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method
