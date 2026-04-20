.class public final Landroidx/media3/extractor/mp4/BoxParser;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/BoxParser$TkhdData;,
        Landroidx/media3/extractor/mp4/BoxParser$MdhdData;,
        Landroidx/media3/extractor/mp4/BoxParser$StsdData;,
        Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;,
        Landroidx/media3/extractor/mp4/BoxParser$EsdsData;,
        Landroidx/media3/extractor/mp4/BoxParser$VexuData;,
        Landroidx/media3/extractor/mp4/BoxParser$EyesData;,
        Landroidx/media3/extractor/mp4/BoxParser$StriData;,
        Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    }
.end annotation


# static fields
.field private static final EDIT_LIST_DURATION_TOLERANCE_TIMESCALE_UNITS:I = 0x2

.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x4

.field private static final SAMPLE_RATE_AMR_NB:I = 0x1f40

.field private static final SAMPLE_RATE_AMR_WB:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "BoxParsers"

.field private static final TYPE_clcp:I = 0x636c6370

.field private static final TYPE_mdta:I = 0x6d647461

.field private static final TYPE_meta:I = 0x6d657461

.field private static final TYPE_nclc:I = 0x6e636c63

.field private static final TYPE_nclx:I = 0x6e636c78

.field private static final TYPE_sbtl:I = 0x7362746c

.field private static final TYPE_soun:I = 0x736f756e

.field private static final TYPE_subp:I = 0x73756270

.field private static final TYPE_subt:I = 0x73756274

.field private static final TYPE_text:I = 0x74657874

.field private static final TYPE_vide:I = 0x76696465

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    const-string v0, "OpusHead"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2740
    return-void
.end method

.method private static allocateHdrStaticInfo()Ljava/nio/ByteBuffer;
    .locals 2

    .line 2023
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 7
    .param p0, "timestamps"    # [J
    .param p1, "duration"    # J
    .param p3, "editStartTime"    # J
    .param p5, "editEndTime"    # J

    .line 2728
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2729
    .local v0, "lastIndex":I
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v4

    .line 2730
    .local v4, "latestDelayIndex":I
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 2731
    invoke-static {v5, v3, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v2

    .line 2732
    .local v2, "earliestPaddingIndex":I
    aget-wide v5, p0, v3

    cmp-long v5, v5, p3

    if-gtz v5, :cond_0

    aget-wide v5, p0, v4

    cmp-long v5, p3, v5

    if-gez v5, :cond_0

    aget-wide v5, p0, v2

    cmp-long v5, v5, p5

    if-gez v5, :cond_0

    const-wide/16 v5, 0x2

    add-long/2addr v5, p1

    cmp-long v5, p5, v5

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method private static findBoxPosition(Landroidx/media3/common/util/ParsableByteArray;III)I
    .locals 6
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "boxType"    # I
    .param p2, "parentBoxPosition"    # I
    .param p3, "parentBoxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2453
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 2454
    .local v0, "childAtomPosition":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2455
    :goto_1
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_3

    .line 2456
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2457
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 2458
    .local v3, "childAtomSize":I
    if-lez v3, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2459
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 2460
    .local v4, "childType":I
    if-ne v4, p1, :cond_2

    .line 2461
    return v0

    .line 2463
    :cond_2
    add-int/2addr v0, v3

    .line 2464
    .end local v3    # "childAtomSize":I
    .end local v4    # "childType":I
    goto :goto_1

    .line 2465
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method private static formatVobsubIdx([BII)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1375
    array-length v0, p0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1377
    .local v0, "palette":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x3

    if-ge v1, v2, :cond_1

    .line 1378
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p0, v4

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, p0, v5

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v2

    .line 1379
    .local v2, "yuv":I
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->vobsubYuvToRgb(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%06x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    .end local v2    # "yuv":I
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 1381
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\npalette: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getLanguageFromCode(I)Ljava/lang/String;
    .locals 5
    .param p0, "languageCode"    # I

    .line 1176
    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    and-int/lit8 v2, p0, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    const/4 v3, 0x3

    new-array v3, v3, [C

    const/4 v4, 0x0

    aput-char v0, v3, v4

    const/4 v0, 0x1

    aput-char v1, v3, v0

    const/4 v0, 0x2

    aput-char v2, v3, v0

    .line 1182
    .local v3, "chars":[C
    array-length v0, v3

    :goto_0
    if-ge v4, v0, :cond_2

    aget-char v1, v3, v4

    .line 1183
    .local v1, "c":C
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 1182
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1184
    .restart local v1    # "c":C
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 1187
    .end local v1    # "c":C
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static getTrackTypeForHdlr(I)I
    .locals 1
    .param p0, "hdlr"    # I

    .line 1117
    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    .line 1118
    const/4 v0, 0x1

    return v0

    .line 1119
    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    .line 1120
    const/4 v0, 0x2

    return v0

    .line 1121
    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-eq p0, v0, :cond_4

    const v0, 0x73756270

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 1127
    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    .line 1128
    const/4 v0, 0x5

    return v0

    .line 1130
    :cond_3
    const/4 v0, -0x1

    return v0

    .line 1126
    :cond_4
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method public static maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3
    .param p0, "meta"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 321
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 326
    .local v0, "endPosition":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 327
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    .line 328
    add-int/lit8 v0, v0, 0x4

    .line 330
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 331
    return-void
.end method

.method private static parseApvc(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;
    .locals 15
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1981
    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1982
    .local v0, "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 1983
    .local v1, "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    const/16 v3, 0x8

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 1985
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1986
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 1987
    .local v4, "numConfigurationEntries":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 1988
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1989
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 1990
    .local v6, "numberOfFrameInfo":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 1991
    const/4 v8, 0x6

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1992
    nop

    .line 1993
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    .line 1994
    .local v8, "isColorDescriptionPresent":Z
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1997
    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1998
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1999
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    add-int/2addr v9, v3

    .line 2000
    .local v9, "bitDepth":I
    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 2001
    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 2002
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 2003
    if-eqz v8, :cond_1

    .line 2004
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 2005
    .local v10, "colorPrimaries":I
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 2006
    .local v11, "transferCharacteristics":I
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 2007
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v12

    .line 2008
    .local v12, "fullRangeFlag":Z
    nop

    .line 2009
    invoke-static {v10}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v13

    invoke-virtual {v0, v13}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v13

    .line 2010
    if-eqz v12, :cond_0

    move v14, v2

    goto :goto_2

    :cond_0
    const/4 v14, 0x2

    :goto_2
    invoke-virtual {v13, v14}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v13

    .line 2012
    invoke-static {v11}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v14

    .line 2011
    invoke-virtual {v13, v14}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1990
    .end local v8    # "isColorDescriptionPresent":Z
    .end local v9    # "bitDepth":I
    .end local v10    # "colorPrimaries":I
    .end local v11    # "transferCharacteristics":I
    .end local v12    # "fullRangeFlag":Z
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1987
    .end local v6    # "numberOfFrameInfo":I
    .end local v7    # "j":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2016
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2
.end method

.method private static parseAudioSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V
    .locals 30
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z
    .param p7, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p8, "out"    # Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .param p9, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2091
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    add-int/lit8 v8, v2, 0x8

    const/16 v9, 0x8

    add-int/2addr v8, v9

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2093
    const/4 v8, 0x0

    .line 2094
    .local v8, "quickTimeSoundDescriptionVersion":I
    const/4 v10, 0x6

    if-eqz p6, :cond_0

    .line 2095
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 2096
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 2098
    :cond_0
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2103
    :goto_0
    const/4 v11, 0x0

    .line 2104
    .local v11, "sampleRateMlp":I
    const/4 v12, -0x1

    .line 2105
    .local v12, "pcmEncoding":I
    const/4 v13, 0x0

    .line 2106
    .local v13, "codecs":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2107
    .local v14, "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    const/4 v15, 0x0

    .line 2109
    .local v15, "btrtData":Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v8, :cond_d

    if-ne v8, v10, :cond_1

    move/from16 v22, v9

    move/from16 v23, v11

    goto/16 :goto_7

    .line 2121
    :cond_1
    if-ne v8, v9, :cond_c

    .line 2122
    move/from16 v22, v9

    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2124
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readDouble()D

    move-result-wide v23

    move v9, v11

    .end local v11    # "sampleRateMlp":I
    .local v9, "sampleRateMlp":I
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    .line 2125
    .local v10, "sampleRate":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    .line 2127
    .local v11, "channelCount":I
    move/from16 v23, v9

    const/4 v9, 0x4

    .end local v9    # "sampleRateMlp":I
    .local v23, "sampleRateMlp":I
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2128
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 2129
    .local v9, "bitsPerSample":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    .line 2130
    .local v16, "formatSpecificFlags":I
    and-int/lit8 v24, v16, 0x1

    if-eqz v24, :cond_2

    const/16 v24, 0x1

    goto :goto_1

    :cond_2
    const/16 v24, 0x0

    .line 2131
    .local v24, "isFloat":Z
    :goto_1
    and-int/lit8 v26, v16, 0x2

    if-eqz v26, :cond_3

    const/16 v26, 0x1

    goto :goto_2

    :cond_3
    const/16 v26, 0x0

    .line 2132
    .local v26, "isBigEndian":Z
    :goto_2
    if-nez v24, :cond_a

    .line 2133
    move/from16 v27, v10

    const/16 v10, 0x8

    .end local v10    # "sampleRate":I
    .local v27, "sampleRate":I
    if-ne v9, v10, :cond_4

    .line 2134
    const/4 v12, 0x3

    goto :goto_6

    .line 2135
    :cond_4
    const/16 v10, 0x10

    if-ne v9, v10, :cond_6

    .line 2136
    if-eqz v26, :cond_5

    const/high16 v10, 0x10000000

    goto :goto_3

    :cond_5
    move/from16 v10, v22

    :goto_3
    move v12, v10

    goto :goto_6

    .line 2137
    :cond_6
    const/16 v10, 0x18

    if-ne v9, v10, :cond_8

    .line 2138
    if-eqz v26, :cond_7

    const/high16 v10, 0x50000000

    goto :goto_4

    :cond_7
    const/16 v10, 0x15

    :goto_4
    move v12, v10

    goto :goto_6

    .line 2139
    :cond_8
    const/16 v10, 0x20

    if-ne v9, v10, :cond_b

    .line 2140
    if-eqz v26, :cond_9

    const/high16 v10, 0x60000000

    goto :goto_5

    :cond_9
    const/16 v10, 0x16

    :goto_5
    move v12, v10

    goto :goto_6

    .line 2142
    .end local v27    # "sampleRate":I
    .restart local v10    # "sampleRate":I
    :cond_a
    move/from16 v27, v10

    .end local v10    # "sampleRate":I
    .restart local v27    # "sampleRate":I
    if-nez v26, :cond_b

    const/16 v10, 0x20

    if-ne v9, v10, :cond_b

    .line 2143
    const/4 v12, 0x4

    .line 2145
    :cond_b
    :goto_6
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2146
    .end local v9    # "bitsPerSample":I
    .end local v16    # "formatSpecificFlags":I
    .end local v24    # "isFloat":Z
    .end local v26    # "isBigEndian":Z
    move/from16 v9, v23

    move/from16 v10, v27

    goto :goto_8

    .line 2148
    .end local v23    # "sampleRateMlp":I
    .end local v27    # "sampleRate":I
    .local v11, "sampleRateMlp":I
    :cond_c
    return-void

    .line 2109
    :cond_d
    move/from16 v22, v9

    move/from16 v23, v11

    .line 2110
    .end local v11    # "sampleRateMlp":I
    .restart local v23    # "sampleRateMlp":I
    :goto_7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 2111
    .local v11, "channelCount":I
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2113
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v10

    .line 2115
    .restart local v10    # "sampleRate":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v9

    const/16 v19, 0x4

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2116
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 2118
    .end local v23    # "sampleRateMlp":I
    .local v9, "sampleRateMlp":I
    move/from16 v16, v9

    const/4 v9, 0x1

    .end local v9    # "sampleRateMlp":I
    .local v16, "sampleRateMlp":I
    if-ne v8, v9, :cond_e

    .line 2119
    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2151
    :cond_e
    move/from16 v9, v16

    .end local v16    # "sampleRateMlp":I
    .restart local v9    # "sampleRateMlp":I
    :goto_8
    move/from16 v16, v8

    .end local v8    # "quickTimeSoundDescriptionVersion":I
    .local v16, "quickTimeSoundDescriptionVersion":I
    const v8, 0x69616d66

    if-ne v1, v8, :cond_f

    .line 2155
    const/4 v11, -0x1

    .line 2156
    const/4 v10, -0x1

    goto :goto_9

    .line 2157
    :cond_f
    const v8, 0x73616d72

    if-ne v1, v8, :cond_10

    .line 2159
    const/4 v11, 0x1

    .line 2160
    const/16 v10, 0x1f40

    goto :goto_9

    .line 2161
    :cond_10
    const v8, 0x73617762

    if-ne v1, v8, :cond_11

    .line 2163
    const/4 v11, 0x1

    .line 2164
    const/16 v10, 0x3e80

    .line 2167
    :cond_11
    :goto_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v8

    .line 2168
    .local v8, "childPosition":I
    move/from16 v24, v10

    .end local v10    # "sampleRate":I
    .local v24, "sampleRate":I
    const v10, 0x656e6361

    move/from16 v26, v11

    .end local v11    # "channelCount":I
    .local v26, "channelCount":I
    if-ne v1, v10, :cond_14

    .line 2170
    nop

    .line 2171
    invoke-static {v0, v2, v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v10

    .line 2172
    .local v10, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v10, :cond_13

    .line 2173
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2175
    .end local p1    # "atomType":I
    .local v1, "atomType":I
    if-nez v6, :cond_12

    .line 2176
    const/4 v11, 0x0

    goto :goto_a

    .line 2177
    :cond_12
    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v11

    :goto_a
    nop

    .line 2178
    .end local p7    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v11, "drmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v6, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move/from16 p1, v1

    .end local v1    # "atomType":I
    .restart local p1    # "atomType":I
    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v1, v6, p9

    move/from16 v1, p1

    move-object v6, v11

    .line 2180
    .end local v11    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .end local p1    # "atomType":I
    .restart local v1    # "atomType":I
    .local v6, "drmInitData":Landroidx/media3/common/DrmInitData;
    :cond_13
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2188
    .end local v10    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    :cond_14
    const/4 v10, 0x0

    .line 2189
    .local v10, "mimeType":Ljava/lang/String;
    const v11, 0x61632d33

    const/4 v2, -0x1

    if-ne v1, v11, :cond_15

    .line 2190
    const-string v10, "audio/ac3"

    goto/16 :goto_d

    .line 2191
    :cond_15
    const v11, 0x65632d33

    if-ne v1, v11, :cond_16

    .line 2192
    const-string v10, "audio/eac3"

    goto/16 :goto_d

    .line 2193
    :cond_16
    const v11, 0x61632d34

    if-ne v1, v11, :cond_17

    .line 2194
    const-string v10, "audio/ac4"

    goto/16 :goto_d

    .line 2195
    :cond_17
    const v11, 0x64747363

    if-ne v1, v11, :cond_18

    .line 2196
    const-string v10, "audio/vnd.dts"

    goto/16 :goto_d

    .line 2197
    :cond_18
    const v11, 0x64747368

    if-eq v1, v11, :cond_2b

    const v11, 0x6474736c

    if-ne v1, v11, :cond_19

    goto/16 :goto_c

    .line 2199
    :cond_19
    const v11, 0x64747365

    if-ne v1, v11, :cond_1a

    .line 2200
    const-string v10, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_d

    .line 2201
    :cond_1a
    const v11, 0x64747378

    if-ne v1, v11, :cond_1b

    .line 2202
    const-string v10, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_d

    .line 2203
    :cond_1b
    const v11, 0x73616d72

    if-ne v1, v11, :cond_1c

    .line 2204
    const-string v10, "audio/3gpp"

    goto/16 :goto_d

    .line 2205
    :cond_1c
    const v11, 0x73617762

    if-ne v1, v11, :cond_1d

    .line 2206
    const-string v10, "audio/amr-wb"

    goto/16 :goto_d

    .line 2207
    :cond_1d
    const v11, 0x736f7774

    if-ne v1, v11, :cond_1e

    .line 2208
    const-string v10, "audio/raw"

    .line 2209
    const/4 v12, 0x2

    goto/16 :goto_d

    .line 2210
    :cond_1e
    const v11, 0x74776f73

    if-ne v1, v11, :cond_1f

    .line 2211
    const-string v10, "audio/raw"

    .line 2212
    const/high16 v12, 0x10000000

    goto/16 :goto_d

    .line 2213
    :cond_1f
    const v11, 0x6c70636d

    if-ne v1, v11, :cond_20

    .line 2214
    const-string v10, "audio/raw"

    .line 2215
    if-ne v12, v2, :cond_2c

    .line 2216
    const/4 v12, 0x2

    goto :goto_d

    .line 2218
    :cond_20
    const v11, 0x2e6d7032

    if-eq v1, v11, :cond_2a

    const v11, 0x2e6d7033

    if-ne v1, v11, :cond_21

    goto :goto_b

    .line 2220
    :cond_21
    const v11, 0x6d686131

    if-ne v1, v11, :cond_22

    .line 2221
    const-string v10, "audio/mha1"

    goto :goto_d

    .line 2222
    :cond_22
    const v11, 0x6d686d31

    if-ne v1, v11, :cond_23

    .line 2223
    const-string v10, "audio/mhm1"

    goto :goto_d

    .line 2224
    :cond_23
    const v11, 0x616c6163

    if-ne v1, v11, :cond_24

    .line 2225
    const-string v10, "audio/alac"

    goto :goto_d

    .line 2226
    :cond_24
    const v11, 0x616c6177

    if-ne v1, v11, :cond_25

    .line 2227
    const-string v10, "audio/g711-alaw"

    goto :goto_d

    .line 2228
    :cond_25
    const v11, 0x756c6177

    if-ne v1, v11, :cond_26

    .line 2229
    const-string v10, "audio/g711-mlaw"

    goto :goto_d

    .line 2230
    :cond_26
    const v11, 0x4f707573

    if-ne v1, v11, :cond_27

    .line 2231
    const-string v10, "audio/opus"

    goto :goto_d

    .line 2232
    :cond_27
    const v11, 0x664c6143

    if-ne v1, v11, :cond_28

    .line 2233
    const-string v10, "audio/flac"

    goto :goto_d

    .line 2234
    :cond_28
    const v11, 0x6d6c7061

    if-ne v1, v11, :cond_29

    .line 2235
    const-string v10, "audio/true-hd"

    goto :goto_d

    .line 2236
    :cond_29
    const v11, 0x69616d66

    if-ne v1, v11, :cond_2c

    .line 2237
    const-string v10, "audio/iamf"

    goto :goto_d

    .line 2219
    :cond_2a
    :goto_b
    const-string v10, "audio/mpeg"

    goto :goto_d

    .line 2198
    :cond_2b
    :goto_c
    const-string v10, "audio/vnd.dts.hd"

    .line 2240
    :cond_2c
    :goto_d
    const/4 v11, 0x0

    move-object/from16 v18, v14

    move-object/from16 v20, v15

    move v14, v12

    move-object v15, v13

    move/from16 v12, v26

    move-object v13, v11

    move/from16 v11, v24

    .line 2241
    .end local v24    # "sampleRate":I
    .end local v26    # "channelCount":I
    .local v11, "sampleRate":I
    .local v12, "channelCount":I
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v14, "pcmEncoding":I
    .local v15, "codecs":Ljava/lang/String;
    .local v18, "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .local v20, "btrtData":Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    :goto_e
    sub-int v2, v8, p2

    if-ge v2, v3, :cond_4c

    .line 2242
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2243
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2244
    .local v2, "childAtomSize":I
    if-lez v2, :cond_2d

    const/4 v3, 0x1

    goto :goto_f

    :cond_2d
    const/4 v3, 0x0

    :goto_f
    move/from16 v23, v14

    .end local v14    # "pcmEncoding":I
    .local v23, "pcmEncoding":I
    const-string v14, "childAtomSize must be positive"

    invoke-static {v3, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2245
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 2246
    .local v3, "childAtomType":I
    const v14, 0x6d686143

    if-ne v3, v14, :cond_30

    .line 2250
    add-int/lit8 v14, v8, 0x8

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2251
    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2252
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v24

    .line 2253
    .local v24, "mpeghProfileLevelIndication":I
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2255
    const-string v14, "audio/mhm1"

    invoke-static {v10, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 2256
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v26, v15

    .end local v15    # "codecs":Ljava/lang/String;
    .local v26, "codecs":Ljava/lang/String;
    const-string v15, "mhm1.%02X"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_10

    .line 2257
    .end local v26    # "codecs":Ljava/lang/String;
    .restart local v15    # "codecs":Ljava/lang/String;
    :cond_2e
    move-object/from16 v26, v15

    .end local v15    # "codecs":Ljava/lang/String;
    .restart local v26    # "codecs":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "mha1.%02X"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    :goto_10
    nop

    .line 2258
    .end local v26    # "codecs":Ljava/lang/String;
    .local v14, "codecs":Ljava/lang/String;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v15

    .line 2259
    .local v15, "mpegh3daConfigLength":I
    move-object/from16 v26, v14

    .end local v14    # "codecs":Ljava/lang/String;
    .restart local v26    # "codecs":Ljava/lang/String;
    new-array v14, v15, [B

    .line 2260
    .local v14, "initializationDataBytes":[B
    move/from16 v28, v2

    const/4 v2, 0x0

    .end local v2    # "childAtomSize":I
    .local v28, "childAtomSize":I
    invoke-virtual {v0, v14, v2, v15}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2262
    if-nez v13, :cond_2f

    .line 2263
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    goto :goto_11

    .line 2267
    :cond_2f
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v2, v29

    check-cast v2, [B

    invoke-static {v14, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    .line 2269
    .end local v14    # "initializationDataBytes":[B
    .end local v15    # "mpegh3daConfigLength":I
    .end local v24    # "mpeghProfileLevelIndication":I
    :goto_11
    move/from16 v29, v1

    move/from16 v14, v23

    move-object/from16 v15, v26

    move/from16 v1, v28

    const/16 v17, 0x20

    const/16 v25, 0x1

    goto/16 :goto_1a

    .end local v26    # "codecs":Ljava/lang/String;
    .end local v28    # "childAtomSize":I
    .restart local v2    # "childAtomSize":I
    .local v15, "codecs":Ljava/lang/String;
    :cond_30
    move/from16 v28, v2

    move-object/from16 v26, v15

    .end local v2    # "childAtomSize":I
    .end local v15    # "codecs":Ljava/lang/String;
    .restart local v26    # "codecs":Ljava/lang/String;
    .restart local v28    # "childAtomSize":I
    const v2, 0x6d686150

    if-ne v3, v2, :cond_33

    .line 2272
    add-int/lit8 v2, v8, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2273
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 2274
    .local v2, "numCompatibleSets":I
    if-lez v2, :cond_32

    .line 2275
    new-array v14, v2, [B

    .line 2276
    .local v14, "mpeghCompatibleProfileLevelSet":[B
    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2277
    if-nez v13, :cond_31

    .line 2278
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    goto :goto_12

    .line 2282
    :cond_31
    nop

    .line 2283
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v15, v24

    check-cast v15, [B

    invoke-static {v15, v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    .line 2286
    .end local v2    # "numCompatibleSets":I
    .end local v14    # "mpeghCompatibleProfileLevelSet":[B
    :cond_32
    :goto_12
    move/from16 v29, v1

    move/from16 v14, v23

    move-object/from16 v15, v26

    move/from16 v1, v28

    const/16 v17, 0x20

    const/16 v25, 0x1

    goto/16 :goto_1a

    :cond_33
    const v2, 0x65736473

    if-eq v3, v2, :cond_46

    if-eqz p6, :cond_34

    const v14, 0x77617665

    if-ne v3, v14, :cond_34

    move/from16 v29, v1

    const/16 v17, 0x20

    const/16 v25, 0x1

    goto/16 :goto_17

    .line 2314
    :cond_34
    const v2, 0x62747274

    if-ne v3, v2, :cond_35

    .line 2315
    invoke-static {v0, v8}, Landroidx/media3/extractor/mp4/BoxParser;->parseBtrtFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    move-result-object v2

    move/from16 v29, v1

    move-object/from16 v20, v2

    move/from16 v14, v23

    move-object/from16 v15, v26

    move/from16 v1, v28

    const/16 v17, 0x20

    const/16 v25, 0x1

    .end local v20    # "btrtData":Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    .local v2, "btrtData":Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    goto/16 :goto_1a

    .line 2316
    .end local v2    # "btrtData":Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    .restart local v20    # "btrtData":Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    :cond_35
    const v2, 0x64616333

    if-ne v3, v2, :cond_36

    .line 2317
    add-int/lit8 v2, v8, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2318
    nop

    .line 2319
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Landroidx/media3/extractor/Ac3Util;->parseAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    move/from16 v29, v1

    const/16 v25, 0x1

    goto/16 :goto_16

    .line 2320
    :cond_36
    const v2, 0x64656333

    if-ne v3, v2, :cond_37

    .line 2321
    add-int/lit8 v2, v8, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2322
    nop

    .line 2323
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Landroidx/media3/extractor/Ac3Util;->parseEAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    move/from16 v29, v1

    const/16 v25, 0x1

    goto/16 :goto_16

    .line 2324
    :cond_37
    const v2, 0x64616334

    if-ne v3, v2, :cond_38

    .line 2325
    add-int/lit8 v2, v8, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2326
    nop

    .line 2327
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Landroidx/media3/extractor/Ac4Util;->parseAc4AnnexEFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    move/from16 v29, v1

    const/16 v25, 0x1

    goto/16 :goto_16

    .line 2328
    :cond_38
    const v2, 0x646d6c70

    if-ne v3, v2, :cond_3a

    .line 2329
    if-lez v9, :cond_39

    .line 2334
    move v2, v9

    .line 2338
    .end local v11    # "sampleRate":I
    .local v2, "sampleRate":I
    const/4 v11, 0x2

    move/from16 v29, v1

    move v12, v11

    move/from16 v14, v23

    move-object/from16 v15, v26

    move/from16 v1, v28

    const/16 v17, 0x20

    const/16 v25, 0x1

    move v11, v2

    .end local v12    # "channelCount":I
    .local v11, "channelCount":I
    goto/16 :goto_1a

    .line 2330
    .end local v2    # "sampleRate":I
    .local v11, "sampleRate":I
    .restart local v12    # "channelCount":I
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    invoke-static {v2, v14}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2

    .line 2339
    :cond_3a
    const/4 v14, 0x0

    const v2, 0x64647473

    if-eq v3, v2, :cond_45

    const v2, 0x75647473

    if-ne v3, v2, :cond_3b

    move/from16 v29, v1

    const/16 v25, 0x1

    goto/16 :goto_15

    .line 2349
    :cond_3b
    const v2, 0x644f7073

    if-ne v3, v2, :cond_3c

    .line 2352
    add-int/lit8 v2, v28, -0x8

    .line 2353
    .local v2, "childAtomBodySize":I
    sget-object v15, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    sget-object v14, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    array-length v14, v14

    add-int/2addr v14, v2

    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    .line 2354
    .local v14, "headerBytes":[B
    add-int/lit8 v15, v8, 0x8

    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2355
    sget-object v15, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    array-length v15, v15

    invoke-virtual {v0, v14, v15, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2356
    invoke-static {v14}, Landroidx/media3/container/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v2

    .line 2357
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v14    # "headerBytes":[B
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move/from16 v29, v1

    move-object v13, v2

    move/from16 v14, v23

    move-object/from16 v15, v26

    move/from16 v1, v28

    const/16 v17, 0x20

    const/16 v25, 0x1

    goto/16 :goto_1a

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3c
    const v2, 0x64664c61

    if-ne v3, v2, :cond_3d

    .line 2358
    add-int/lit8 v2, v28, -0xc

    .line 2359
    .local v2, "childAtomBodySize":I
    add-int/lit8 v14, v2, 0x4

    new-array v14, v14, [B

    .line 2360
    .local v14, "initializationDataBytes":[B
    const/16 v15, 0x66

    const/16 v21, 0x0

    aput-byte v15, v14, v21

    .line 2361
    const/16 v15, 0x4c

    const/16 v25, 0x1

    aput-byte v15, v14, v25

    .line 2362
    const/16 v15, 0x61

    aput-byte v15, v14, v22

    .line 2363
    const/4 v15, 0x3

    const/16 v24, 0x43

    aput-byte v24, v14, v15

    .line 2364
    add-int/lit8 v15, v8, 0xc

    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2365
    const/4 v15, 0x4

    invoke-virtual {v0, v14, v15, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2366
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 2367
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v14    # "initializationDataBytes":[B
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move/from16 v29, v1

    move-object v13, v2

    move/from16 v14, v23

    move-object/from16 v15, v26

    move/from16 v1, v28

    const/16 v17, 0x20

    const/16 v25, 0x1

    goto/16 :goto_1a

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3d
    const/4 v15, 0x4

    const v14, 0x616c6163

    if-ne v3, v14, :cond_3e

    .line 2368
    add-int/lit8 v2, v28, -0xc

    .line 2369
    .local v2, "childAtomBodySize":I
    new-array v14, v2, [B

    .line 2370
    .restart local v14    # "initializationDataBytes":[B
    add-int/lit8 v15, v8, 0xc

    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2371
    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2374
    nop

    .line 2375
    invoke-static {v14}, Landroidx/media3/common/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)[I

    move-result-object v24

    .line 2376
    .local v24, "parsedAlacConfig":[I
    aget v11, v24, v15

    .line 2377
    const/16 v25, 0x1

    aget v12, v24, v25

    .line 2378
    aget v15, v24, v22

    .line 2379
    .local v15, "bitDepth":I
    invoke-static {v15}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v23

    .line 2380
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 2381
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v14    # "initializationDataBytes":[B
    .end local v15    # "bitDepth":I
    .end local v24    # "parsedAlacConfig":[I
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move/from16 v29, v1

    move-object v13, v2

    move/from16 v14, v23

    move-object/from16 v15, v26

    move/from16 v1, v28

    const/16 v17, 0x20

    const/16 v25, 0x1

    goto/16 :goto_1a

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3e
    const v2, 0x69616362

    if-ne v3, v2, :cond_3f

    .line 2382
    add-int/lit8 v2, v8, 0x8

    const/16 v25, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2384
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLeb128ToInt()I

    move-result v2

    .line 2385
    .local v2, "configObusSize":I
    new-array v14, v2, [B

    .line 2386
    .restart local v14    # "initializationDataBytes":[B
    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2387
    invoke-static {v14}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildIamfCodecString([B)Ljava/lang/String;

    move-result-object v21

    .line 2388
    .end local v26    # "codecs":Ljava/lang/String;
    .local v21, "codecs":Ljava/lang/String;
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 2389
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v14    # "initializationDataBytes":[B
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move/from16 v29, v1

    move-object v13, v2

    move-object/from16 v15, v21

    move/from16 v14, v23

    move/from16 v1, v28

    const/16 v17, 0x20

    goto/16 :goto_1a

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v21    # "codecs":Ljava/lang/String;
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v26    # "codecs":Ljava/lang/String;
    :cond_3f
    const/4 v15, 0x0

    const/16 v25, 0x1

    const v2, 0x70636d43

    if-ne v3, v2, :cond_44

    .line 2391
    add-int/lit8 v2, v8, 0xc

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2392
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 2393
    .local v2, "formatFlags":I
    and-int/lit8 v14, v2, 0x1

    if-eqz v14, :cond_40

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_13

    :cond_40
    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2394
    .local v14, "byteOrder":Ljava/nio/ByteOrder;
    :goto_13
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 2395
    .local v15, "sampleSize":I
    move/from16 v24, v2

    .end local v2    # "formatFlags":I
    .local v24, "formatFlags":I
    const v2, 0x6970636d

    if-ne v1, v2, :cond_41

    .line 2396
    invoke-static {v15, v14}, Landroidx/media3/common/util/Util;->getPcmEncoding(ILjava/nio/ByteOrder;)I

    move-result v2

    .end local v23    # "pcmEncoding":I
    .local v2, "pcmEncoding":I
    goto :goto_14

    .line 2397
    .end local v2    # "pcmEncoding":I
    .restart local v23    # "pcmEncoding":I
    :cond_41
    const v2, 0x6670636d

    if-ne v1, v2, :cond_42

    const/16 v2, 0x20

    if-ne v15, v2, :cond_42

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2399
    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2401
    const/4 v2, 0x4

    .end local v23    # "pcmEncoding":I
    .restart local v2    # "pcmEncoding":I
    goto :goto_14

    .line 2403
    .end local v2    # "pcmEncoding":I
    .restart local v23    # "pcmEncoding":I
    :cond_42
    move/from16 v2, v23

    .end local v23    # "pcmEncoding":I
    .restart local v2    # "pcmEncoding":I
    :goto_14
    move/from16 v29, v1

    const/4 v1, -0x1

    .end local v1    # "atomType":I
    .local v29, "atomType":I
    if-eq v2, v1, :cond_43

    .line 2404
    const-string v1, "audio/raw"

    move-object v10, v1

    move v14, v2

    move-object/from16 v15, v26

    move/from16 v1, v28

    const/16 v17, 0x20

    .end local v10    # "mimeType":Ljava/lang/String;
    .local v1, "mimeType":Ljava/lang/String;
    goto/16 :goto_1a

    .line 2403
    .end local v1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    :cond_43
    move v14, v2

    move-object/from16 v15, v26

    move/from16 v1, v28

    const/16 v17, 0x20

    goto/16 :goto_1a

    .line 2389
    .end local v2    # "pcmEncoding":I
    .end local v14    # "byteOrder":Ljava/nio/ByteOrder;
    .end local v15    # "sampleSize":I
    .end local v24    # "formatFlags":I
    .end local v29    # "atomType":I
    .local v1, "atomType":I
    .restart local v23    # "pcmEncoding":I
    :cond_44
    move/from16 v29, v1

    .end local v1    # "atomType":I
    .restart local v29    # "atomType":I
    goto :goto_16

    .line 2339
    .end local v29    # "atomType":I
    .restart local v1    # "atomType":I
    :cond_45
    move/from16 v29, v1

    const/16 v25, 0x1

    .line 2340
    .end local v1    # "atomType":I
    .restart local v29    # "atomType":I
    :goto_15
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 2342
    invoke-virtual {v1, v4}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 2343
    invoke-virtual {v1, v10}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 2344
    invoke-virtual {v1, v12}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 2345
    invoke-virtual {v1, v11}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 2346
    invoke-virtual {v1, v6}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 2347
    invoke-virtual {v1, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 2348
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    .line 2407
    .end local v29    # "atomType":I
    .restart local v1    # "atomType":I
    :goto_16
    move/from16 v14, v23

    move-object/from16 v15, v26

    move/from16 v1, v28

    const/16 v17, 0x20

    .end local v1    # "atomType":I
    .restart local v29    # "atomType":I
    goto :goto_1a

    .line 2286
    .end local v29    # "atomType":I
    .restart local v1    # "atomType":I
    :cond_46
    move/from16 v29, v1

    const/16 v17, 0x20

    const/16 v25, 0x1

    .line 2289
    .end local v1    # "atomType":I
    .restart local v29    # "atomType":I
    :goto_17
    if-ne v3, v2, :cond_47

    .line 2290
    move v2, v8

    move/from16 v1, v28

    goto :goto_18

    .line 2291
    :cond_47
    move/from16 v1, v28

    .end local v28    # "childAtomSize":I
    .local v1, "childAtomSize":I
    invoke-static {v0, v2, v8, v1}, Landroidx/media3/extractor/mp4/BoxParser;->findBoxPosition(Landroidx/media3/common/util/ParsableByteArray;III)I

    move-result v2

    :goto_18
    nop

    .line 2292
    .local v2, "esdsAtomPosition":I
    const/4 v14, -0x1

    if-eq v2, v14, :cond_4b

    .line 2293
    invoke-static {v0, v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v18

    .line 2294
    invoke-static/range {v18 .. v18}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1300(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;

    move-result-object v10

    .line 2295
    invoke-static/range {v18 .. v18}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$700(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B

    move-result-object v15

    .line 2296
    .local v15, "initializationDataBytes":[B
    if-eqz v15, :cond_4a

    .line 2297
    const-string v14, "audio/vorbis"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_48

    .line 2298
    nop

    .line 2299
    invoke-static {v15}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisCsdFromEsdsInitializationData([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    move-object/from16 v15, v26

    goto :goto_19

    .line 2301
    :cond_48
    const-string v14, "audio/mp4a-latm"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_49

    .line 2304
    nop

    .line 2305
    invoke-static {v15}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v14

    .line 2306
    .local v14, "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    iget v11, v14, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 2307
    iget v12, v14, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    .line 2308
    iget-object v0, v14, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2310
    .end local v14    # "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    :cond_49
    invoke-static {v15}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    move-object/from16 v15, v26

    goto :goto_19

    .line 2296
    :cond_4a
    move-object/from16 v15, v26

    goto :goto_19

    .line 2292
    .end local v15    # "initializationDataBytes":[B
    :cond_4b
    move-object/from16 v15, v26

    .line 2314
    .end local v2    # "esdsAtomPosition":I
    .end local v26    # "codecs":Ljava/lang/String;
    .local v15, "codecs":Ljava/lang/String;
    :goto_19
    move/from16 v14, v23

    .line 2407
    .end local v23    # "pcmEncoding":I
    .local v14, "pcmEncoding":I
    :goto_1a
    add-int/2addr v8, v1

    .line 2408
    .end local v1    # "childAtomSize":I
    .end local v3    # "childAtomType":I
    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v1, v29

    const/4 v2, -0x1

    goto/16 :goto_e

    .line 2410
    .end local v29    # "atomType":I
    .local v1, "atomType":I
    :cond_4c
    move/from16 v29, v1

    move/from16 v23, v14

    move-object/from16 v26, v15

    .end local v1    # "atomType":I
    .end local v14    # "pcmEncoding":I
    .end local v15    # "codecs":Ljava/lang/String;
    .restart local v23    # "pcmEncoding":I
    .restart local v26    # "codecs":Ljava/lang/String;
    .restart local v29    # "atomType":I
    iget-object v0, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    if-nez v0, :cond_4f

    if-eqz v10, :cond_4f

    .line 2411
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 2413
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2414
    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2415
    move-object/from16 v15, v26

    .end local v26    # "codecs":Ljava/lang/String;
    .restart local v15    # "codecs":Ljava/lang/String;
    invoke-virtual {v0, v15}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2416
    invoke-virtual {v0, v12}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2417
    invoke-virtual {v0, v11}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2418
    move/from16 v14, v23

    .end local v23    # "pcmEncoding":I
    .restart local v14    # "pcmEncoding":I
    invoke-virtual {v0, v14}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2419
    invoke-virtual {v0, v13}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2420
    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2421
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2424
    .local v0, "formatBuilder":Landroidx/media3/common/Format$Builder;
    if-eqz v18, :cond_4d

    .line 2425
    nop

    .line 2426
    invoke-static/range {v18 .. v18}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1700(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 2427
    invoke-static/range {v18 .. v18}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1600(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    goto :goto_1b

    .line 2428
    :cond_4d
    if-eqz v20, :cond_4e

    .line 2429
    nop

    .line 2430
    invoke-static/range {v20 .. v20}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->access$1500(Landroidx/media3/extractor/mp4/BoxParser$BtrtData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 2431
    invoke-static/range {v20 .. v20}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->access$1400(Landroidx/media3/extractor/mp4/BoxParser$BtrtData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 2434
    :cond_4e
    :goto_1b
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_1c

    .line 2410
    .end local v0    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    .end local v14    # "pcmEncoding":I
    .end local v15    # "codecs":Ljava/lang/String;
    .restart local v23    # "pcmEncoding":I
    .restart local v26    # "codecs":Ljava/lang/String;
    :cond_4f
    move/from16 v14, v23

    move-object/from16 v15, v26

    .line 2436
    .end local v23    # "pcmEncoding":I
    .end local v26    # "codecs":Ljava/lang/String;
    .restart local v14    # "pcmEncoding":I
    .restart local v15    # "codecs":Ljava/lang/String;
    :goto_1c
    return-void
.end method

.method private static parseAv1c(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;
    .locals 23
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1853
    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1854
    .local v0, "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 1855
    .local v1, "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    const/16 v3, 0x8

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 1859
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1860
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 1861
    .local v5, "seqProfile":I
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1862
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 1863
    .local v6, "highBitdepth":Z
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 1864
    .local v7, "twelveBit":Z
    const/16 v8, 0xc

    const/16 v9, 0xa

    const/4 v10, 0x2

    if-ne v5, v10, :cond_2

    if-eqz v6, :cond_2

    .line 1865
    if-eqz v7, :cond_0

    move v11, v8

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    invoke-virtual {v0, v11}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1866
    if-eqz v7, :cond_1

    move v9, v8

    :cond_1
    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    goto :goto_3

    .line 1867
    :cond_2
    if-gt v5, v10, :cond_5

    .line 1868
    if-eqz v6, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    move v11, v3

    :goto_1
    invoke-virtual {v0, v11}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1869
    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v9, v3

    :goto_2
    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1873
    :cond_5
    :goto_3
    const/16 v9, 0xd

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1876
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1877
    const/4 v11, 0x4

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 1878
    .local v12, "obuType":I
    const-string v13, "BoxParsers"

    if-eq v12, v2, :cond_6

    .line 1879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported obu_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1882
    :cond_6
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1883
    const-string v2, "Unsupported obu_extension_flag"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1886
    :cond_7
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    .line 1887
    .local v14, "obuHasSizeField":Z
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1889
    if-eqz v14, :cond_8

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    const/16 v9, 0x7f

    if-le v15, v9, :cond_8

    .line 1890
    const-string v2, "Excessive obu_size"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1894
    :cond_8
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 1895
    .local v9, "obuSeqHeaderSeqProfile":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1896
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1897
    const-string v2, "Unsupported reduced_still_picture_header"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1900
    :cond_9
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1901
    const-string v2, "Unsupported timing_info_present_flag"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1904
    :cond_a
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1905
    const-string v2, "Unsupported initial_display_delay_present_flag"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1908
    :cond_b
    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 1909
    .local v15, "operatingPointsCountMinus1":I
    const/16 v17, 0x0

    move/from16 v3, v17

    .local v3, "i":I
    :goto_4
    const/4 v4, 0x7

    if-gt v3, v15, :cond_d

    .line 1910
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1911
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 1912
    .local v8, "seqLevelIdx":I
    if-le v8, v4, :cond_c

    .line 1913
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1909
    .end local v8    # "seqLevelIdx":I
    :cond_c
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    const/16 v8, 0xc

    goto :goto_4

    .line 1916
    .end local v3    # "i":I
    :cond_d
    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 1917
    .local v3, "frameWidthBitsMinus1":I
    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 1918
    .local v8, "frameHeightBitsMinus1":I
    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1919
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1920
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1921
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1923
    :cond_e
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1924
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 1925
    .local v4, "enableOrderHint":Z
    if-eqz v4, :cond_f

    .line 1926
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1929
    :cond_f
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1930
    move v11, v10

    goto :goto_5

    .line 1931
    :cond_10
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    :goto_5
    nop

    .line 1932
    .local v11, "seqForceScreenContentTools":I
    if-lez v11, :cond_11

    .line 1933
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v13

    if-nez v13, :cond_11

    .line 1934
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1937
    :cond_11
    if-eqz v4, :cond_12

    .line 1938
    const/4 v13, 0x3

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_6

    .line 1937
    :cond_12
    const/4 v13, 0x3

    .line 1940
    :goto_6
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1942
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v13

    .line 1943
    .local v13, "colorConfigHighBitdepth":Z
    if-ne v9, v10, :cond_13

    if-eqz v13, :cond_13

    .line 1944
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1947
    :cond_13
    if-eq v9, v2, :cond_14

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_14

    move/from16 v17, v2

    goto :goto_7

    :cond_14
    const/16 v17, 0x0

    .line 1949
    .local v17, "monochrome":Z
    :goto_7
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 1950
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 1951
    .local v2, "colorPrimaries":I
    move/from16 v20, v3

    .end local v3    # "frameWidthBitsMinus1":I
    .local v20, "frameWidthBitsMinus1":I
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 1952
    .local v3, "transferCharacteristics":I
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 1954
    .local v10, "matrixCoefficients":I
    if-nez v17, :cond_15

    move/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "enableOrderHint":Z
    .local v21, "enableOrderHint":Z
    if-ne v2, v4, :cond_16

    const/16 v4, 0xd

    if-ne v3, v4, :cond_16

    if-nez v10, :cond_16

    .line 1958
    const/4 v4, 0x1

    const/16 v16, 0x1

    goto :goto_8

    .line 1954
    .end local v21    # "enableOrderHint":Z
    .restart local v4    # "enableOrderHint":Z
    :cond_15
    move/from16 v21, v4

    .line 1959
    .end local v4    # "enableOrderHint":Z
    .restart local v21    # "enableOrderHint":Z
    :cond_16
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v16

    :goto_8
    move/from16 v18, v16

    .line 1960
    .local v18, "colorRange":I
    nop

    .line 1961
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    .line 1962
    move-object/from16 v22, v0

    move-object/from16 v16, v1

    move/from16 v0, v18

    const/4 v1, 0x1

    .end local v1    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .end local v18    # "colorRange":I
    .local v0, "colorRange":I
    .local v16, "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .local v22, "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    if-ne v0, v1, :cond_17

    goto :goto_9

    :cond_17
    const/4 v1, 0x2

    :goto_9
    invoke-virtual {v4, v1}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 1964
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v4

    .line 1963
    invoke-virtual {v1, v4}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    goto :goto_a

    .line 1949
    .end local v2    # "colorPrimaries":I
    .end local v10    # "matrixCoefficients":I
    .end local v16    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .end local v20    # "frameWidthBitsMinus1":I
    .end local v21    # "enableOrderHint":Z
    .end local v22    # "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    .local v0, "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    .restart local v1    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .local v3, "frameWidthBitsMinus1":I
    .restart local v4    # "enableOrderHint":Z
    :cond_18
    move-object/from16 v22, v0

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v4

    .line 1966
    .end local v0    # "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    .end local v1    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .end local v3    # "frameWidthBitsMinus1":I
    .end local v4    # "enableOrderHint":Z
    .restart local v16    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .restart local v20    # "frameWidthBitsMinus1":I
    .restart local v21    # "enableOrderHint":Z
    .restart local v22    # "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    :goto_a
    invoke-virtual/range {v22 .. v22}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0
.end method

.method private static parseBtrtFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    .locals 5
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 2527
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2529
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2530
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 2531
    .local v0, "maxBitrate":J
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    .line 2533
    .local v2, "avgBitrate":J
    new-instance v4, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    invoke-direct {v4, v2, v3, v0, v1}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;-><init>(JJ)V

    return-object v4
.end method

.method static parseCommonEncryptionSinfFromParent(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 9
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2613
    add-int/lit8 v0, p1, 0x8

    .line 2614
    .local v0, "childPosition":I
    const/4 v1, -0x1

    .line 2615
    .local v1, "schemeInformationBoxPosition":I
    const/4 v2, 0x0

    .line 2616
    .local v2, "schemeInformationBoxSize":I
    const/4 v3, 0x0

    .line 2617
    .local v3, "schemeType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2618
    .local v4, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v5, v0, p1

    if-ge v5, p2, :cond_3

    .line 2619
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2620
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 2621
    .local v5, "childAtomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 2622
    .local v6, "childAtomType":I
    const v7, 0x66726d61

    if-ne v6, v7, :cond_0

    .line 2623
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 2624
    :cond_0
    const v7, 0x7363686d

    if-ne v6, v7, :cond_1

    .line 2625
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2627
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2628
    :cond_1
    const v7, 0x73636869

    if-ne v6, v7, :cond_2

    .line 2629
    move v1, v0

    .line 2630
    move v2, v5

    .line 2632
    :cond_2
    :goto_1
    add-int/2addr v0, v5

    .line 2633
    .end local v5    # "childAtomSize":I
    .end local v6    # "childAtomType":I
    goto :goto_0

    .line 2635
    :cond_3
    const-string v5, "cenc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2636
    const-string v5, "cbc1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2637
    const-string v5, "cens"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2638
    const-string v5, "cbcs"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 2649
    :cond_4
    const/4 v5, 0x0

    return-object v5

    .line 2639
    :cond_5
    :goto_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    move v7, v5

    goto :goto_3

    :cond_6
    move v7, v6

    :goto_3
    const-string v8, "frma atom is mandatory"

    invoke-static {v7, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2640
    const/4 v7, -0x1

    if-eq v1, v7, :cond_7

    move v7, v5

    goto :goto_4

    :cond_7
    move v7, v6

    :goto_4
    const-string/jumbo v8, "schi atom is mandatory"

    invoke-static {v7, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2643
    nop

    .line 2644
    invoke-static {p0, v1, v2, v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseSchiFromParent(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v7

    .line 2646
    .local v7, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    move v5, v6

    :goto_5
    const-string/jumbo v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2647
    invoke-static {v7}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseEdts(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroid/util/Pair;
    .locals 11
    .param p0, "edtsAtom"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 2047
    const v0, 0x656c7374

    invoke-virtual {p0, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    .line 2048
    .local v0, "elstAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-nez v0, :cond_0

    .line 2049
    const/4 v1, 0x0

    return-object v1

    .line 2051
    :cond_0
    iget-object v1, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 2052
    .local v1, "elstData":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2053
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2054
    .local v2, "fullAtom":I
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v3

    .line 2055
    .local v3, "version":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 2056
    .local v4, "entryCount":I
    new-array v5, v4, [J

    .line 2057
    .local v5, "editListDurations":[J
    new-array v6, v4, [J

    .line 2058
    .local v6, "editListMediaTimes":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_4

    .line 2059
    nop

    .line 2060
    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    :goto_1
    aput-wide v9, v5, v7

    .line 2061
    if-ne v3, v8, :cond_2

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    :goto_2
    aput-wide v9, v6, v7

    .line 2062
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v9

    .line 2063
    .local v9, "mediaRateInteger":I
    if-ne v9, v8, :cond_3

    .line 2067
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2058
    .end local v9    # "mediaRateInteger":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2065
    .restart local v9    # "mediaRateInteger":I
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unsupported media rate."

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2069
    .end local v7    # "i":I
    .end local v9    # "mediaRateInteger":I
    :cond_4
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7
.end method

.method private static parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .locals 18
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 2470
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x8

    const/4 v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2472
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2473
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 2474
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2476
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 2477
    .local v4, "flags":I
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_0

    .line 2478
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2480
    :cond_0
    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_1

    .line 2481
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2483
    :cond_1
    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_2

    .line 2484
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2488
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2489
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 2492
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 2493
    .local v3, "objectTypeIndication":I
    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v6

    .line 2494
    .local v6, "mimeType":Ljava/lang/String;
    const-string v5, "audio/mpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2495
    const-string v5, "audio/vnd.dts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2496
    const-string v5, "audio/vnd.dts.hd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 2504
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2505
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 2506
    .local v12, "peakBitrate":J
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v14

    .line 2509
    .local v14, "bitrate":J
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2510
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v1

    .line 2511
    .local v1, "initializationDataSize":I
    new-array v7, v1, [B

    .line 2512
    .local v7, "initializationData":[B
    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2515
    new-instance v5, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    .line 2518
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    const-wide/16 v10, -0x1

    move-wide/from16 v16, v8

    if-lez v2, :cond_4

    move-wide v8, v14

    goto :goto_0

    :cond_4
    move-wide v8, v10

    .line 2519
    :goto_0
    cmp-long v2, v12, v16

    if-lez v2, :cond_5

    move-wide v10, v12

    :cond_5
    invoke-direct/range {v5 .. v11}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    .line 2515
    return-object v5

    .line 2497
    .end local v1    # "initializationDataSize":I
    .end local v7    # "initializationData":[B
    .end local v12    # "peakBitrate":J
    .end local v14    # "bitrate":J
    :cond_6
    :goto_1
    new-instance v5, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v11}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object v5
.end method

.method private static parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 4
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 2716
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 2717
    .local v0, "currentByte":I
    and-int/lit8 v1, v0, 0x7f

    .line 2718
    .local v1, "size":I
    :goto_0
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 2719
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 2720
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_0

    .line 2722
    :cond_0
    return v1
.end method

.method public static parseFullBoxFlags(I)I
    .locals 1
    .param p0, "fullBoxInt"    # I

    .line 138
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static parseFullBoxVersion(I)I
    .locals 1
    .param p0, "fullBoxInt"    # I

    .line 133
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 1
    .param p0, "hdlr"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1111
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1112
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseIlst(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .locals 2
    .param p0, "ilst"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 1000
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/Metadata$Entry;>;"
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 1003
    invoke-static {p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIlstElement(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    .line 1004
    .local v1, "entry":Landroidx/media3/common/Metadata$Entry;
    if-eqz v1, :cond_0

    .line 1005
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    .end local v1    # "entry":Landroidx/media3/common/Metadata$Entry;
    :cond_0
    goto :goto_0

    .line 1008
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object v1
.end method

.method private static parseMdhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$MdhdData;
    .locals 15
    .param p0, "mdhd"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1141
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1142
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1143
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v2

    .line 1144
    .local v2, "version":I
    if-nez v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1145
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    .line 1146
    .local v5, "timescale":J
    const/4 v3, 0x1

    .line 1147
    .local v3, "mediaDurationUnknown":Z
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v10

    .line 1148
    .local v10, "mediaDurationPosition":I
    if-nez v2, :cond_1

    const/4 v0, 0x4

    .line 1149
    .local v0, "mediaDurationByteCount":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 1150
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    add-int v8, v10, v4

    aget-byte v7, v7, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 1151
    const/4 v3, 0x0

    .line 1152
    goto :goto_2

    .line 1149
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1156
    .end local v4    # "i":I
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 1157
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1158
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v13, v7

    move-wide v8, v5

    move-wide v6, v13

    .local v7, "mediaDurationUs":J
    goto :goto_4

    .line 1160
    .end local v7    # "mediaDurationUs":J
    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v7

    .line 1161
    .local v7, "mediaDuration":J
    :goto_3
    const-wide/16 v11, 0x0

    cmp-long v4, v7, v11

    if-nez v4, :cond_6

    .line 1164
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, v5

    move-wide v6, v11

    .local v11, "mediaDurationUs":J
    goto :goto_4

    .line 1166
    .end local v11    # "mediaDurationUs":J
    :cond_6
    move-wide v13, v7

    move-wide v8, v5

    move-wide v4, v13

    .end local v5    # "timescale":J
    .end local v7    # "mediaDuration":J
    .local v4, "mediaDuration":J
    .local v8, "timescale":J
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 1170
    .end local v4    # "mediaDuration":J
    .local v6, "mediaDurationUs":J
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->getLanguageFromCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1171
    .local v4, "language":Ljava/lang/String;
    move-wide v13, v8

    move-wide v7, v6

    move-wide v5, v13

    move-object v9, v4

    .end local v4    # "language":Ljava/lang/String;
    .end local v6    # "mediaDurationUs":J
    .end local v8    # "timescale":J
    .restart local v5    # "timescale":J
    .local v7, "mediaDurationUs":J
    .local v9, "language":Ljava/lang/String;
    new-instance v4, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;

    invoke-direct/range {v4 .. v9}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;-><init>(JJLjava/lang/String;)V

    move-object v5, v4

    move-wide v6, v7

    move-object v4, v9

    move-wide v8, v13

    .end local v5    # "timescale":J
    .end local v7    # "mediaDurationUs":J
    .end local v9    # "language":Ljava/lang/String;
    .restart local v4    # "language":Ljava/lang/String;
    .restart local v6    # "mediaDurationUs":J
    .restart local v8    # "timescale":J
    return-object v5
.end method

.method public static parseMdtaFromMeta(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;
    .locals 15
    .param p0, "meta"    # Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 262
    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    .line 263
    .local v0, "hdlrAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v1

    .line 264
    .local v1, "keysAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    .line 265
    .local v2, "ilstAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    iget-object v4, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 268
    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v4

    const v5, 0x6d647461

    if-eq v4, v5, :cond_0

    goto/16 :goto_4

    .line 274
    :cond_0
    iget-object v4, v1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 275
    .local v4, "keys":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 276
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 277
    .local v5, "entryCount":I
    new-array v6, v5, [Ljava/lang/String;

    .line 278
    .local v6, "keyNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 279
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 280
    .local v8, "entrySize":I
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 281
    add-int/lit8 v9, v8, -0x8

    .line 282
    .local v9, "keySize":I
    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    .line 278
    .end local v8    # "entrySize":I
    .end local v9    # "keySize":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 286
    .end local v7    # "i":I
    :cond_1
    iget-object v7, v2, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 287
    .local v7, "ilst":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 288
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/Metadata$Entry;>;"
    :goto_1
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-le v10, v8, :cond_4

    .line 290
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v10

    .line 291
    .local v10, "atomPosition":I
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 292
    .local v11, "atomSize":I
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .line 293
    .local v12, "keyIndex":I
    if-ltz v12, :cond_3

    array-length v13, v6

    if-ge v12, v13, :cond_3

    .line 294
    aget-object v13, v6, v12

    .line 296
    .local v13, "key":Ljava/lang/String;
    add-int v14, v10, v11

    .line 297
    invoke-static {v7, v14, v13}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v14

    .line 298
    .local v14, "entry":Landroidx/media3/common/Metadata$Entry;
    if-eqz v14, :cond_2

    .line 299
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "entry":Landroidx/media3/common/Metadata$Entry;
    :cond_2
    goto :goto_2

    .line 302
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipped metadata with unknown key index: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "BoxParsers"

    invoke-static {v14, v13}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_2
    add-int v13, v10, v11

    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 305
    .end local v10    # "atomPosition":I
    .end local v11    # "atomSize":I
    .end local v12    # "keyIndex":I
    goto :goto_1

    .line 306
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    new-instance v3, Landroidx/media3/common/Metadata;

    invoke-direct {v3, v9}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_3
    return-object v3

    .line 270
    .end local v4    # "keys":Landroidx/media3/common/util/ParsableByteArray;
    .end local v5    # "entryCount":I
    .end local v6    # "keyNames":[Ljava/lang/String;
    .end local v7    # "ilst":Landroidx/media3/common/util/ParsableByteArray;
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/Metadata$Entry;>;"
    :cond_6
    :goto_4
    return-object v3
.end method

.method private static parseMetaDataSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/BoxParser$StsdData;)V
    .locals 2
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "trackId"    # I
    .param p4, "out"    # Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    .line 2028
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2029
    const v0, 0x6d657474

    if-ne p1, v0, :cond_0

    .line 2030
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 2031
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    .line 2032
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2033
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v1, p3}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, p4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    .line 2036
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;
    .locals 13
    .param p0, "mvhd"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 237
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 238
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 239
    .local v0, "fullAtom":I
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v1

    .line 242
    .local v1, "version":I
    if-nez v1, :cond_0

    .line 243
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    .line 244
    .local v2, "creationTimestampSeconds":J
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    move-wide v7, v2

    move-wide v9, v4

    .local v4, "modificationTimestampSeconds":J
    goto :goto_0

    .line 246
    .end local v2    # "creationTimestampSeconds":J
    .end local v4    # "modificationTimestampSeconds":J
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v2

    .line 247
    .restart local v2    # "creationTimestampSeconds":J
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    move-wide v7, v2

    move-wide v9, v4

    .line 250
    .end local v2    # "creationTimestampSeconds":J
    .local v7, "creationTimestampSeconds":J
    .local v9, "modificationTimestampSeconds":J
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    .line 251
    .local v11, "timescale":J
    new-instance v6, Landroidx/media3/container/Mp4TimestampData;

    invoke-direct/range {v6 .. v12}, Landroidx/media3/container/Mp4TimestampData;-><init>(JJJ)V

    return-object v6
.end method

.method private static parsePaspFromParent(Landroidx/media3/common/util/ParsableByteArray;I)F
    .locals 4
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 2073
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2074
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 2075
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 2076
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseProjFromParent(Landroidx/media3/common/util/ParsableByteArray;II)[B
    .locals 5
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .line 2701
    add-int/lit8 v0, p1, 0x8

    .line 2702
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 2703
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2704
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2705
    .local v1, "childAtomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2706
    .local v2, "childAtomType":I
    const v3, 0x70726f6a

    if-ne v2, v3, :cond_0

    .line 2707
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    add-int v4, v0, v1

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3

    .line 2709
    :cond_0
    add-int/2addr v0, v1

    .line 2710
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 2711
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 4
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2591
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 2592
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 2593
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2594
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2595
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2596
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2597
    .local v2, "childAtomType":I
    const v3, 0x73696e66

    if-ne v2, v3, :cond_1

    .line 2599
    nop

    .line 2600
    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseCommonEncryptionSinfFromParent(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v3

    .line 2601
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v3, :cond_1

    .line 2602
    return-object v3

    .line 2605
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    :cond_1
    add-int/2addr v0, v1

    .line 2606
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 2607
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSchiFromParent(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .locals 19
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "schemeType"    # Ljava/lang/String;

    .line 2656
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x8

    .line 2657
    .local v1, "childPosition":I
    :goto_0
    sub-int v2, v1, p1

    move/from16 v3, p2

    if-ge v2, v3, :cond_4

    .line 2658
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2659
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2660
    .local v2, "childAtomSize":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 2661
    .local v4, "childAtomType":I
    const v5, 0x74656e63

    if-ne v4, v5, :cond_3

    .line 2662
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 2663
    .local v5, "fullAtom":I
    invoke-static {v5}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v6

    .line 2664
    .local v6, "version":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2665
    const/4 v8, 0x0

    .line 2666
    .local v8, "defaultCryptByteBlock":I
    const/4 v9, 0x0

    .line 2667
    .local v9, "defaultSkipByteBlock":I
    if-nez v6, :cond_0

    .line 2668
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v16, v8

    move/from16 v17, v9

    goto :goto_1

    .line 2670
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 2671
    .local v10, "patternByte":I
    and-int/lit16 v11, v10, 0xf0

    shr-int/lit8 v8, v11, 0x4

    .line 2672
    and-int/lit8 v9, v10, 0xf

    move/from16 v16, v8

    move/from16 v17, v9

    .line 2674
    .end local v8    # "defaultCryptByteBlock":I
    .end local v9    # "defaultSkipByteBlock":I
    .end local v10    # "patternByte":I
    .local v16, "defaultCryptByteBlock":I
    .local v17, "defaultSkipByteBlock":I
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    const/4 v9, 0x0

    if-ne v8, v7, :cond_1

    move v12, v7

    goto :goto_2

    :cond_1
    move v12, v9

    .line 2675
    .local v12, "defaultIsProtected":Z
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    .line 2676
    .local v14, "defaultPerSampleIvSize":I
    const/16 v7, 0x10

    new-array v15, v7, [B

    .line 2677
    .local v15, "defaultKeyId":[B
    array-length v7, v15

    invoke-virtual {v0, v15, v9, v7}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2678
    const/4 v7, 0x0

    .line 2679
    .local v7, "constantIv":[B
    if-eqz v12, :cond_2

    if-nez v14, :cond_2

    .line 2680
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 2681
    .local v8, "constantIvSize":I
    new-array v7, v8, [B

    .line 2682
    invoke-virtual {v0, v7, v9, v8}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v18, v7

    goto :goto_3

    .line 2684
    .end local v8    # "constantIvSize":I
    :cond_2
    move-object/from16 v18, v7

    .end local v7    # "constantIv":[B
    .local v18, "constantIv":[B
    :goto_3
    new-instance v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v13, p3

    invoke-direct/range {v11 .. v18}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v11

    .line 2693
    .end local v5    # "fullAtom":I
    .end local v6    # "version":I
    .end local v12    # "defaultIsProtected":Z
    .end local v14    # "defaultPerSampleIvSize":I
    .end local v15    # "defaultKeyId":[B
    .end local v16    # "defaultCryptByteBlock":I
    .end local v17    # "defaultSkipByteBlock":I
    .end local v18    # "constantIv":[B
    :cond_3
    add-int/2addr v1, v2

    .line 2694
    .end local v2    # "childAtomSize":I
    .end local v4    # "childAtomType":I
    goto :goto_0

    .line 2695
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public static parseStbl(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;Z)Landroidx/media3/extractor/mp4/TrackSampleTable;
    .locals 85
    .param p0, "track"    # Landroidx/media3/extractor/mp4/Track;
    .param p1, "stblBox"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .param p2, "gaplessInfoHolder"    # Landroidx/media3/extractor/GaplessInfoHolder;
    .param p3, "omitTrackSampleTable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 452
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    const v0, 0x7374737a

    invoke-virtual {v12, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v14

    .line 453
    .local v14, "stszAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v14, :cond_0

    .line 454
    new-instance v2, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;

    iget-object v3, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-direct {v2, v14, v3}, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;Landroidx/media3/common/Format;)V

    move-object v15, v2

    .local v2, "sampleSizeBox":Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
    goto :goto_0

    .line 456
    .end local v2    # "sampleSizeBox":Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
    :cond_0
    const v2, 0x73747a32

    invoke-virtual {v12, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    .line 457
    .local v2, "stz2Atom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v2, :cond_4e

    .line 461
    new-instance v3, Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;

    invoke-direct {v3, v2}, Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;)V

    move-object v15, v3

    .line 464
    .end local v2    # "stz2Atom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v15, "sampleSizeBox":Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
    :goto_0
    invoke-interface {v15}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->getSampleCount()I

    move-result v2

    .line 465
    .local v2, "sampleCount":I
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 466
    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move v4, v2

    .end local v2    # "sampleCount":I
    .local v4, "sampleCount":I
    new-array v2, v3, [J

    new-array v5, v3, [I

    move-object v6, v5

    new-array v5, v3, [J

    move-object v7, v6

    new-array v6, v3, [I

    move-object v8, v7

    new-array v7, v3, [I

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move v3, v4

    .end local v4    # "sampleCount":I
    .local v3, "sampleCount":I
    const/4 v4, 0x0

    move/from16 v16, v3

    move-object v3, v8

    .end local v3    # "sampleCount":I
    .local v16, "sampleCount":I
    const/4 v8, 0x0

    move-object/from16 v17, v14

    move/from16 v14, v16

    .end local v16    # "sampleCount":I
    .local v14, "sampleCount":I
    .local v17, "stszAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    return-object v0

    .line 479
    .end local v17    # "stszAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .restart local v2    # "sampleCount":I
    .local v14, "stszAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    :cond_1
    move-object/from16 v17, v14

    move v14, v2

    .end local v2    # "sampleCount":I
    .local v14, "sampleCount":I
    .restart local v17    # "stszAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    iget v2, v1, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    if-ne v2, v4, :cond_2

    iget-wide v7, v1, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_2

    .line 480
    int-to-float v2, v14

    iget-wide v7, v1, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    long-to-float v7, v7

    const v8, 0x49742400    # 1000000.0f

    div-float/2addr v7, v8

    div-float/2addr v2, v7

    .line 481
    .local v2, "frameRate":F
    iget-object v7, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v7}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v7

    .line 482
    .local v7, "format":Landroidx/media3/common/Format;
    invoke-virtual {v1, v7}, Landroidx/media3/extractor/mp4/Track;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v1

    .line 486
    .end local v2    # "frameRate":F
    .end local v7    # "format":Landroidx/media3/common/Format;
    .end local p0    # "track":Landroidx/media3/extractor/mp4/Track;
    .local v1, "track":Landroidx/media3/extractor/mp4/Track;
    :cond_2
    const/4 v2, 0x0

    .line 487
    .local v2, "chunkOffsetsAreLongs":Z
    const v7, 0x7374636f

    invoke-virtual {v12, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v7

    .line 488
    .local v7, "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-nez v7, :cond_3

    .line 489
    const/4 v2, 0x1

    .line 490
    const v8, 0x636f3634

    invoke-virtual {v12, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v8

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 492
    :cond_3
    iget-object v8, v7, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 494
    .local v8, "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    const v9, 0x73747363

    invoke-virtual {v12, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v9, v9, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 496
    .local v9, "stsc":Landroidx/media3/common/util/ParsableByteArray;
    const v10, 0x73747473

    invoke-virtual {v12, v10}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v10, v10, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 498
    .local v10, "stts":Landroidx/media3/common/util/ParsableByteArray;
    const v11, 0x73747373

    invoke-virtual {v12, v11}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v11

    .line 499
    .local v11, "stssAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v11, :cond_4

    iget-object v0, v11, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 501
    .local v0, "stss":Landroidx/media3/common/util/ParsableByteArray;
    :goto_1
    move-wide/from16 v18, v5

    const v5, 0x63747473

    invoke-virtual {v12, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v5

    .line 502
    .local v5, "cttsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v5, :cond_5

    iget-object v6, v5, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v16, v6

    goto :goto_2

    :cond_5
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v6, v16

    .line 505
    .local v6, "ctts":Landroidx/media3/common/util/ParsableByteArray;
    new-instance v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;

    invoke-direct {v4, v9, v8, v2}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;-><init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    .line 508
    .local v4, "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    const/16 v3, 0xc

    invoke-virtual {v10, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 509
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    const/4 v3, 0x1

    add-int/lit8 v16, v16, -0x1

    .line 510
    .local v16, "remainingTimestampDeltaChanges":I
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v22

    .line 511
    .local v22, "remainingSamplesAtTimestampDelta":I
    move/from16 v23, v3

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 514
    .local v3, "timestampDeltaInTimeUnits":I
    const/16 v24, 0x0

    .line 515
    .local v24, "remainingSamplesAtTimestampOffset":I
    const/16 v25, 0x0

    .line 516
    .local v25, "remainingTimestampOffsetChanges":I
    const/16 v26, 0x0

    .line 517
    .local v26, "timestampOffset":I
    if-eqz v6, :cond_6

    .line 518
    move/from16 v27, v2

    const/16 v2, 0xc

    .end local v2    # "chunkOffsetsAreLongs":Z
    .local v27, "chunkOffsetsAreLongs":Z
    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 519
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v25

    goto :goto_3

    .line 517
    .end local v27    # "chunkOffsetsAreLongs":Z
    .restart local v2    # "chunkOffsetsAreLongs":Z
    :cond_6
    move/from16 v27, v2

    .line 522
    .end local v2    # "chunkOffsetsAreLongs":Z
    .restart local v27    # "chunkOffsetsAreLongs":Z
    :goto_3
    const/4 v2, -0x1

    .line 523
    .local v2, "nextSynchronizationSampleIndex":I
    const/16 v28, 0x0

    .line 524
    .local v28, "remainingSynchronizationSamples":I
    if-eqz v0, :cond_8

    .line 525
    move/from16 v29, v2

    const/16 v2, 0xc

    .end local v2    # "nextSynchronizationSampleIndex":I
    .local v29, "nextSynchronizationSampleIndex":I
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 526
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v28

    .line 527
    if-lez v28, :cond_7

    .line 528
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .end local v29    # "nextSynchronizationSampleIndex":I
    .restart local v2    # "nextSynchronizationSampleIndex":I
    goto :goto_4

    .line 531
    .end local v2    # "nextSynchronizationSampleIndex":I
    .restart local v29    # "nextSynchronizationSampleIndex":I
    :cond_7
    const/4 v0, 0x0

    move/from16 v2, v29

    goto :goto_4

    .line 524
    .end local v29    # "nextSynchronizationSampleIndex":I
    .restart local v2    # "nextSynchronizationSampleIndex":I
    :cond_8
    move/from16 v29, v2

    .line 536
    :goto_4
    move-object/from16 p0, v0

    .end local v0    # "stss":Landroidx/media3/common/util/ParsableByteArray;
    .local p0, "stss":Landroidx/media3/common/util/ParsableByteArray;
    invoke-interface {v15}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->getFixedSampleSize()I

    move-result v0

    .line 537
    .local v0, "fixedSampleSize":I
    move/from16 v29, v2

    .end local v2    # "nextSynchronizationSampleIndex":I
    .restart local v29    # "nextSynchronizationSampleIndex":I
    iget-object v2, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 538
    .local v2, "sampleMimeType":Ljava/lang/String;
    move-object/from16 v30, v5

    .end local v5    # "cttsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v30, "cttsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    .line 540
    const-string v5, "audio/raw"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 541
    const-string v5, "audio/g711-mlaw"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 542
    const-string v5, "audio/g711-alaw"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    if-nez v16, :cond_a

    if-nez v25, :cond_a

    if-nez v28, :cond_a

    move/from16 v5, v23

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    .line 549
    .local v5, "rechunkFixedSizeSamples":Z
    :goto_5
    const/16 v31, 0x0

    .line 552
    .local v31, "maximumSize":I
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v33, v32

    .line 553
    .local v33, "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_b

    move/from16 v32, v23

    goto :goto_6

    :cond_b
    const/16 v32, 0x0

    :goto_6
    move/from16 v42, v32

    .line 554
    .local v42, "hasOnlySyncSamples":Z
    const-wide/16 v34, 0x0

    .line 556
    .local v34, "timestampTimeUnits":J
    const-wide/16 v36, 0x0

    .line 558
    .local v36, "totalSize":J
    if-eqz v5, :cond_11

    .line 559
    move-object/from16 v32, v2

    .end local v2    # "sampleMimeType":Ljava/lang/String;
    .local v32, "sampleMimeType":Ljava/lang/String;
    iget v2, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    new-array v2, v2, [J

    .line 560
    .local v2, "chunkOffsetsBytes":[J
    move/from16 v46, v5

    .end local v5    # "rechunkFixedSizeSamples":Z
    .local v46, "rechunkFixedSizeSamples":Z
    iget v5, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    new-array v5, v5, [I

    .line 561
    .local v5, "chunkSampleCounts":[I
    :goto_7
    invoke-virtual {v4}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->moveNext()Z

    move-result v38

    if-eqz v38, :cond_c

    .line 562
    move-object/from16 v47, v6

    .end local v6    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .local v47, "ctts":Landroidx/media3/common/util/ParsableByteArray;
    iget v6, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    move/from16 v38, v6

    move-object/from16 v48, v7

    .end local v7    # "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v48, "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    iget-wide v6, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    aput-wide v6, v2, v38

    .line 563
    iget v6, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    iget v7, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    aput v7, v5, v6

    move-object/from16 v6, v47

    move-object/from16 v7, v48

    goto :goto_7

    .line 565
    .end local v47    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v48    # "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .restart local v6    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v7    # "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    :cond_c
    move-object/from16 v47, v6

    move-object/from16 v48, v7

    .end local v6    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v7    # "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .restart local v47    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v48    # "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    int-to-long v6, v3

    .line 566
    invoke-static {v0, v2, v5, v6, v7}, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v6

    .line 568
    .local v6, "rechunkedResults":Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    if-eqz p3, :cond_d

    move/from16 v49, v0

    const/4 v7, 0x0

    .end local v0    # "fixedSampleSize":I
    .local v49, "fixedSampleSize":I
    new-array v0, v7, [J

    goto :goto_8

    .end local v49    # "fixedSampleSize":I
    .restart local v0    # "fixedSampleSize":I
    :cond_d
    move/from16 v49, v0

    const/4 v7, 0x0

    .end local v0    # "fixedSampleSize":I
    .restart local v49    # "fixedSampleSize":I
    iget-object v0, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 569
    .local v0, "offsets":[J
    :goto_8
    if-eqz p3, :cond_e

    move-object/from16 v38, v0

    .end local v0    # "offsets":[J
    .local v38, "offsets":[J
    new-array v0, v7, [I

    goto :goto_9

    .end local v38    # "offsets":[J
    .restart local v0    # "offsets":[J
    :cond_e
    move-object/from16 v38, v0

    .end local v0    # "offsets":[J
    .restart local v38    # "offsets":[J
    iget-object v0, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 570
    .local v0, "sizes":[I
    :goto_9
    if-eqz p3, :cond_f

    move-object/from16 v39, v0

    .end local v0    # "sizes":[I
    .local v39, "sizes":[I
    new-array v0, v7, [J

    goto :goto_a

    .end local v39    # "sizes":[I
    .restart local v0    # "sizes":[I
    :cond_f
    move-object/from16 v39, v0

    .end local v0    # "sizes":[I
    .restart local v39    # "sizes":[I
    iget-object v0, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 571
    .local v0, "timestamps":[J
    :goto_a
    if-eqz p3, :cond_10

    move-object/from16 v40, v0

    .end local v0    # "timestamps":[J
    .local v40, "timestamps":[J
    new-array v0, v7, [I

    goto :goto_b

    .end local v40    # "timestamps":[J
    .restart local v0    # "timestamps":[J
    :cond_10
    move-object/from16 v40, v0

    .end local v0    # "timestamps":[J
    .restart local v40    # "timestamps":[J
    iget-object v0, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 572
    .local v0, "flags":[I
    :goto_b
    iget v7, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 573
    .end local v31    # "maximumSize":I
    .local v7, "maximumSize":I
    move-object/from16 v43, v2

    move/from16 v41, v3

    .end local v2    # "chunkOffsetsBytes":[J
    .end local v3    # "timestampDeltaInTimeUnits":I
    .local v41, "timestampDeltaInTimeUnits":I
    .local v43, "chunkOffsetsBytes":[J
    iget-wide v2, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    .line 574
    .local v2, "duration":J
    move-wide/from16 v44, v2

    .end local v2    # "duration":J
    .local v44, "duration":J
    iget-wide v2, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->totalSize:J

    .line 575
    .end local v36    # "totalSize":J
    .local v2, "totalSize":J
    move-object/from16 v50, v0

    .end local v0    # "flags":[I
    .local v50, "flags":[I
    iget-object v0, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    array-length v0, v0

    .line 576
    .end local v5    # "chunkSampleCounts":[I
    .end local v6    # "rechunkedResults":Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    .end local v14    # "sampleCount":I
    .end local v43    # "chunkOffsetsBytes":[J
    .local v0, "sampleCount":I
    move-object/from16 v31, v15

    move/from16 v13, v22

    move/from16 v14, v26

    move/from16 v15, v28

    move-object/from16 v36, v38

    move-object/from16 v37, v39

    move-object/from16 v5, v40

    move/from16 v12, v41

    move-object/from16 v40, v50

    move/from16 v38, v7

    move-object/from16 v22, v8

    move-object/from16 v26, v9

    move-object/from16 v28, v10

    move-wide/from16 v6, v44

    move/from16 v45, v0

    move/from16 v0, v29

    move-object/from16 v29, v11

    move-wide/from16 v50, v34

    goto/16 :goto_1c

    .line 577
    .end local v32    # "sampleMimeType":Ljava/lang/String;
    .end local v38    # "offsets":[J
    .end local v39    # "sizes":[I
    .end local v40    # "timestamps":[J
    .end local v41    # "timestampDeltaInTimeUnits":I
    .end local v44    # "duration":J
    .end local v46    # "rechunkFixedSizeSamples":Z
    .end local v47    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v48    # "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v49    # "fixedSampleSize":I
    .end local v50    # "flags":[I
    .local v0, "fixedSampleSize":I
    .local v2, "sampleMimeType":Ljava/lang/String;
    .restart local v3    # "timestampDeltaInTimeUnits":I
    .local v5, "rechunkFixedSizeSamples":Z
    .local v6, "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .local v7, "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .restart local v14    # "sampleCount":I
    .restart local v31    # "maximumSize":I
    .restart local v36    # "totalSize":J
    :cond_11
    move/from16 v49, v0

    move-object/from16 v32, v2

    move/from16 v41, v3

    move/from16 v46, v5

    move-object/from16 v47, v6

    move-object/from16 v48, v7

    .end local v0    # "fixedSampleSize":I
    .end local v2    # "sampleMimeType":Ljava/lang/String;
    .end local v3    # "timestampDeltaInTimeUnits":I
    .end local v5    # "rechunkFixedSizeSamples":Z
    .end local v6    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v7    # "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .restart local v32    # "sampleMimeType":Ljava/lang/String;
    .restart local v41    # "timestampDeltaInTimeUnits":I
    .restart local v46    # "rechunkFixedSizeSamples":Z
    .restart local v47    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v48    # "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .restart local v49    # "fixedSampleSize":I
    if-eqz p3, :cond_12

    const/4 v7, 0x0

    new-array v0, v7, [J

    goto :goto_c

    :cond_12
    const/4 v7, 0x0

    new-array v0, v14, [J

    .line 578
    .local v0, "offsets":[J
    :goto_c
    if-eqz p3, :cond_13

    new-array v2, v7, [I

    goto :goto_d

    :cond_13
    new-array v2, v14, [I

    .line 579
    .local v2, "sizes":[I
    :goto_d
    if-eqz p3, :cond_14

    new-array v3, v7, [J

    goto :goto_e

    :cond_14
    new-array v3, v14, [J

    .line 580
    .local v3, "timestamps":[J
    :goto_e
    if-eqz p3, :cond_15

    new-array v5, v7, [I

    goto :goto_f

    :cond_15
    new-array v5, v14, [I

    .line 581
    .local v5, "flags":[I
    :goto_f
    const-wide/16 v6, 0x0

    .line 582
    .local v6, "offset":J
    const/16 v38, 0x0

    .line 584
    .local v38, "remainingSamplesInChunk":I
    const/16 v39, 0x0

    move/from16 v12, v31

    move-object/from16 v31, v15

    move v15, v12

    move/from16 v12, v28

    move/from16 v13, v39

    move-object/from16 v28, v10

    move/from16 v10, v24

    move/from16 v84, v22

    move-object/from16 v22, v8

    move/from16 v8, v16

    move/from16 v16, v25

    move-wide/from16 v24, v6

    move/from16 v6, v29

    move/from16 v7, v41

    move-object/from16 v29, v11

    move/from16 v11, v26

    move-object/from16 v26, v9

    move/from16 v9, v84

    .end local v25    # "remainingTimestampOffsetChanges":I
    .end local v41    # "timestampDeltaInTimeUnits":I
    .local v6, "nextSynchronizationSampleIndex":I
    .local v7, "timestampDeltaInTimeUnits":I
    .local v8, "remainingTimestampDeltaChanges":I
    .local v9, "remainingSamplesAtTimestampDelta":I
    .local v10, "remainingSamplesAtTimestampOffset":I
    .local v11, "timestampOffset":I
    .local v12, "remainingSynchronizationSamples":I
    .local v13, "i":I
    .local v15, "maximumSize":I
    .local v16, "remainingTimestampOffsetChanges":I
    .local v22, "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .local v24, "offset":J
    .local v26, "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .local v28, "stts":Landroidx/media3/common/util/ParsableByteArray;
    .local v29, "stssAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v31, "sampleSizeBox":Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
    :goto_10
    move/from16 v39, v10

    .end local v10    # "remainingSamplesAtTimestampOffset":I
    .local v39, "remainingSamplesAtTimestampOffset":I
    const-string v10, "BoxParsers"

    if-ge v13, v14, :cond_21

    .line 586
    const/16 v40, 0x1

    .line 587
    .local v40, "chunkDataComplete":Z
    :goto_11
    if-nez v38, :cond_16

    invoke-virtual {v4}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->moveNext()Z

    move-result v41

    move/from16 v40, v41

    if-eqz v41, :cond_16

    .line 588
    move/from16 v41, v8

    move/from16 v43, v9

    .end local v8    # "remainingTimestampDeltaChanges":I
    .end local v9    # "remainingSamplesAtTimestampDelta":I
    .local v41, "remainingTimestampDeltaChanges":I
    .local v43, "remainingSamplesAtTimestampDelta":I
    iget-wide v8, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    .line 589
    .end local v24    # "offset":J
    .local v8, "offset":J
    move-wide/from16 v24, v8

    .end local v8    # "offset":J
    .restart local v24    # "offset":J
    iget v8, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    move/from16 v38, v8

    move/from16 v8, v41

    move/from16 v9, v43

    .end local v38    # "remainingSamplesInChunk":I
    .local v8, "remainingSamplesInChunk":I
    goto :goto_11

    .line 587
    .end local v41    # "remainingTimestampDeltaChanges":I
    .end local v43    # "remainingSamplesAtTimestampDelta":I
    .local v8, "remainingTimestampDeltaChanges":I
    .restart local v9    # "remainingSamplesAtTimestampDelta":I
    .restart local v38    # "remainingSamplesInChunk":I
    :cond_16
    move/from16 v41, v8

    move/from16 v43, v9

    .line 591
    .end local v8    # "remainingTimestampDeltaChanges":I
    .end local v9    # "remainingSamplesAtTimestampDelta":I
    .restart local v41    # "remainingTimestampDeltaChanges":I
    .restart local v43    # "remainingSamplesAtTimestampDelta":I
    if-nez v40, :cond_18

    .line 592
    const-string v8, "Unexpected end of chunk data"

    invoke-static {v10, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    move v8, v13

    .line 594
    .end local v14    # "sampleCount":I
    .local v8, "sampleCount":I
    if-nez p3, :cond_17

    .line 595
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 596
    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 597
    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 598
    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move/from16 v9, v38

    goto/16 :goto_16

    .line 594
    :cond_17
    move/from16 v9, v38

    goto/16 :goto_16

    .line 604
    .end local v8    # "sampleCount":I
    .restart local v14    # "sampleCount":I
    :cond_18
    move/from16 v10, v39

    if-eqz v47, :cond_1a

    .line 605
    .end local v39    # "remainingSamplesAtTimestampOffset":I
    .restart local v10    # "remainingSamplesAtTimestampOffset":I
    :goto_12
    if-nez v10, :cond_19

    if-lez v16, :cond_19

    .line 606
    invoke-virtual/range {v47 .. v47}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    .line 612
    invoke-virtual/range {v47 .. v47}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 613
    add-int/lit8 v16, v16, -0x1

    goto :goto_12

    .line 615
    :cond_19
    add-int/lit8 v10, v10, -0x1

    .line 618
    :cond_1a
    invoke-interface/range {v31 .. v31}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->readNextSampleSize()I

    move-result v8

    .line 619
    .local v8, "currentSampleSize":I
    move-object v9, v2

    move-object/from16 v44, v3

    .end local v2    # "sizes":[I
    .end local v3    # "timestamps":[J
    .local v9, "sizes":[I
    .local v44, "timestamps":[J
    int-to-long v2, v8

    add-long v36, v36, v2

    .line 620
    if-le v8, v15, :cond_1b

    .line 621
    move v2, v8

    move v15, v2

    .line 624
    :cond_1b
    if-nez p3, :cond_1e

    .line 625
    aput-wide v24, v0, v13

    .line 626
    aput v8, v9, v13

    .line 627
    int-to-long v2, v11

    add-long v2, v34, v2

    aput-wide v2, v44, v13

    .line 629
    if-nez p0, :cond_1c

    move/from16 v2, v23

    goto :goto_13

    :cond_1c
    const/4 v2, 0x0

    :goto_13
    aput v2, v5, v13

    .line 630
    if-ne v13, v6, :cond_1d

    .line 631
    aput v23, v5, v13

    .line 632
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v33

    .end local v33    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 630
    .end local v3    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v33    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1d
    move-object/from16 v3, v33

    .end local v33    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_14

    .line 624
    .end local v3    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v33    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1e
    move-object/from16 v3, v33

    .line 636
    .end local v33    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_14
    if-eqz p0, :cond_1f

    if-ne v13, v6, :cond_1f

    .line 637
    add-int/lit8 v12, v12, -0x1

    .line 638
    if-lez v12, :cond_1f

    .line 639
    invoke-static/range {p0 .. p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    .line 644
    :cond_1f
    move-object/from16 v33, v3

    .end local v3    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v33    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    int-to-long v2, v7

    add-long v34, v34, v2

    .line 645
    add-int/lit8 v2, v43, -0x1

    .line 646
    .end local v43    # "remainingSamplesAtTimestampDelta":I
    .local v2, "remainingSamplesAtTimestampDelta":I
    if-nez v2, :cond_20

    if-lez v41, :cond_20

    .line 647
    invoke-virtual/range {v28 .. v28}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 654
    invoke-virtual/range {v28 .. v28}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 655
    add-int/lit8 v3, v41, -0x1

    .end local v41    # "remainingTimestampDeltaChanges":I
    .local v3, "remainingTimestampDeltaChanges":I
    goto :goto_15

    .line 658
    .end local v3    # "remainingTimestampDeltaChanges":I
    .restart local v41    # "remainingTimestampDeltaChanges":I
    :cond_20
    move/from16 v3, v41

    .end local v41    # "remainingTimestampDeltaChanges":I
    .restart local v3    # "remainingTimestampDeltaChanges":I
    :goto_15
    move/from16 v41, v2

    move/from16 v39, v3

    .end local v2    # "remainingSamplesAtTimestampDelta":I
    .end local v3    # "remainingTimestampDeltaChanges":I
    .local v39, "remainingTimestampDeltaChanges":I
    .local v41, "remainingSamplesAtTimestampDelta":I
    int-to-long v2, v8

    add-long v24, v24, v2

    .line 659
    nop

    .end local v8    # "currentSampleSize":I
    .end local v40    # "chunkDataComplete":Z
    add-int/lit8 v38, v38, -0x1

    .line 584
    add-int/lit8 v13, v13, 0x1

    move-object v2, v9

    move/from16 v8, v39

    move/from16 v9, v41

    move-object/from16 v3, v44

    goto/16 :goto_10

    .end local v10    # "remainingSamplesAtTimestampOffset":I
    .end local v41    # "remainingSamplesAtTimestampDelta":I
    .end local v44    # "timestamps":[J
    .local v2, "sizes":[I
    .local v3, "timestamps":[J
    .local v8, "remainingTimestampDeltaChanges":I
    .local v9, "remainingSamplesAtTimestampDelta":I
    .local v39, "remainingSamplesAtTimestampOffset":I
    :cond_21
    move-object/from16 v44, v3

    move/from16 v41, v8

    move/from16 v43, v9

    move-object v9, v2

    .end local v2    # "sizes":[I
    .end local v3    # "timestamps":[J
    .end local v8    # "remainingTimestampDeltaChanges":I
    .local v9, "sizes":[I
    .local v41, "remainingTimestampDeltaChanges":I
    .restart local v43    # "remainingSamplesAtTimestampDelta":I
    .restart local v44    # "timestamps":[J
    move v8, v14

    move/from16 v9, v38

    .line 661
    .end local v13    # "i":I
    .end local v14    # "sampleCount":I
    .end local v38    # "remainingSamplesInChunk":I
    .end local v44    # "timestamps":[J
    .restart local v2    # "sizes":[I
    .restart local v3    # "timestamps":[J
    .local v8, "sampleCount":I
    .local v9, "remainingSamplesInChunk":I
    :goto_16
    int-to-long v13, v11

    add-long v13, v34, v13

    .line 665
    .local v13, "duration":J
    const/16 v38, 0x1

    .line 666
    .local v38, "isCttsValid":Z
    if-eqz v47, :cond_23

    .line 667
    :goto_17
    if-lez v16, :cond_23

    .line 668
    invoke-virtual/range {v47 .. v47}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v40

    if-eqz v40, :cond_22

    .line 669
    const/16 v38, 0x0

    .line 670
    goto :goto_18

    .line 672
    :cond_22
    invoke-virtual/range {v47 .. v47}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 673
    add-int/lit8 v16, v16, -0x1

    goto :goto_17

    .line 676
    :cond_23
    :goto_18
    if-nez v12, :cond_25

    if-nez v43, :cond_25

    if-nez v9, :cond_25

    if-nez v41, :cond_25

    if-nez v39, :cond_25

    if-nez v38, :cond_24

    goto :goto_19

    :cond_24
    move-object/from16 v40, v0

    move-object/from16 v44, v2

    move/from16 v45, v39

    goto :goto_1b

    .line 682
    :cond_25
    :goto_19
    move-object/from16 v40, v0

    .end local v0    # "offsets":[J
    .local v40, "offsets":[J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v44, v2

    .end local v2    # "sizes":[I
    .local v44, "sizes":[I
    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v2, v43

    .end local v43    # "remainingSamplesAtTimestampDelta":I
    .local v2, "remainingSamplesAtTimestampDelta":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v2    # "remainingSamplesAtTimestampDelta":I
    .restart local v43    # "remainingSamplesAtTimestampDelta":I
    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v2, v41

    .end local v41    # "remainingTimestampDeltaChanges":I
    .local v2, "remainingTimestampDeltaChanges":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v2    # "remainingTimestampDeltaChanges":I
    .restart local v41    # "remainingTimestampDeltaChanges":I
    const-string v2, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v2, v39

    .end local v39    # "remainingSamplesAtTimestampOffset":I
    .local v2, "remainingSamplesAtTimestampOffset":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 696
    if-nez v38, :cond_26

    const-string v39, ", ctts invalid"

    goto :goto_1a

    :cond_26
    const-string v39, ""

    :goto_1a
    move/from16 v45, v2

    move-object/from16 v2, v39

    .end local v2    # "remainingSamplesAtTimestampOffset":I
    .local v45, "remainingSamplesAtTimestampOffset":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-static {v10, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .end local v9    # "remainingSamplesInChunk":I
    .end local v24    # "offset":J
    .end local v38    # "isCttsValid":Z
    :goto_1b
    move-object v0, v5

    move-object v5, v3

    move-wide/from16 v2, v36

    move-object/from16 v36, v40

    move-object/from16 v40, v0

    move v0, v6

    move/from16 v38, v15

    move/from16 v25, v16

    move/from16 v16, v41

    move-object/from16 v37, v44

    move/from16 v24, v45

    move/from16 v45, v8

    move v15, v12

    move v12, v7

    move-wide v6, v13

    move/from16 v13, v43

    move v14, v11

    move-wide/from16 v50, v34

    .end local v3    # "timestamps":[J
    .end local v7    # "timestampDeltaInTimeUnits":I
    .end local v8    # "sampleCount":I
    .end local v11    # "timestampOffset":I
    .end local v34    # "timestampTimeUnits":J
    .end local v41    # "remainingTimestampDeltaChanges":I
    .end local v43    # "remainingSamplesAtTimestampDelta":I
    .end local v44    # "sizes":[I
    .local v0, "nextSynchronizationSampleIndex":I
    .local v2, "totalSize":J
    .local v5, "timestamps":[J
    .local v6, "duration":J
    .local v12, "timestampDeltaInTimeUnits":I
    .local v13, "remainingSamplesAtTimestampDelta":I
    .local v14, "timestampOffset":I
    .local v15, "remainingSynchronizationSamples":I
    .local v16, "remainingTimestampDeltaChanges":I
    .local v24, "remainingSamplesAtTimestampOffset":I
    .restart local v25    # "remainingTimestampOffsetChanges":I
    .local v36, "offsets":[J
    .local v37, "sizes":[I
    .local v38, "maximumSize":I
    .local v40, "flags":[I
    .local v45, "sampleCount":I
    .local v50, "timestampTimeUnits":J
    :goto_1c
    iget-wide v8, v1, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    cmp-long v8, v8, v18

    const-wide/32 v34, 0x7fffffff

    if-lez v8, :cond_27

    .line 701
    const-wide/16 v8, 0x8

    mul-long v52, v2, v8

    iget-wide v8, v1, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    sget-object v58, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 702
    const-wide/32 v54, 0xf4240

    move-wide/from16 v56, v8

    invoke-static/range {v52 .. v58}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    .line 707
    .local v8, "averageBitrate":J
    cmp-long v10, v8, v18

    if-lez v10, :cond_27

    cmp-long v10, v8, v34

    if-gez v10, :cond_27

    .line 708
    iget-object v10, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v10}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v10

    long-to-int v11, v8

    invoke-virtual {v10, v11}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v10

    .line 709
    .local v10, "format":Landroidx/media3/common/Format;
    invoke-virtual {v1, v10}, Landroidx/media3/extractor/mp4/Track;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v1

    .line 713
    .end local v8    # "averageBitrate":J
    .end local v10    # "format":Landroidx/media3/common/Format;
    :cond_27
    const-wide/32 v8, 0xf4240

    iget-wide v10, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v43

    .line 714
    .local v43, "durationUs":J
    invoke-static/range {v33 .. v33}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v41

    .line 716
    .local v41, "syncSampleIndices":[I
    iget-object v8, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v9, 0xf4240

    if-nez v8, :cond_29

    .line 717
    if-nez p3, :cond_28

    .line 718
    move-wide/from16 v52, v2

    .end local v2    # "totalSize":J
    .local v52, "totalSize":J
    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    invoke-static {v5, v9, v10, v2, v3}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    goto :goto_1d

    .line 717
    .end local v52    # "totalSize":J
    .restart local v2    # "totalSize":J
    :cond_28
    move-wide/from16 v52, v2

    .line 720
    .end local v2    # "totalSize":J
    .restart local v52    # "totalSize":J
    :goto_1d
    new-instance v34, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v35, v1

    move-object/from16 v39, v5

    .end local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v5    # "timestamps":[J
    .local v35, "track":Landroidx/media3/extractor/mp4/Track;
    .local v39, "timestamps":[J
    invoke-direct/range {v34 .. v45}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    move-wide/from16 v2, v43

    .end local v35    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v43    # "durationUs":J
    .restart local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    .local v2, "durationUs":J
    return-object v34

    .line 733
    .end local v39    # "timestamps":[J
    .end local v52    # "totalSize":J
    .local v2, "totalSize":J
    .restart local v5    # "timestamps":[J
    .restart local v43    # "durationUs":J
    :cond_29
    move-wide/from16 v52, v2

    move-object/from16 v39, v5

    move-wide/from16 v2, v43

    .end local v5    # "timestamps":[J
    .end local v43    # "durationUs":J
    .local v2, "durationUs":J
    .restart local v39    # "timestamps":[J
    .restart local v52    # "totalSize":J
    const-wide/16 v43, -0x1

    if-eqz p3, :cond_2d

    .line 735
    iget-object v5, v1, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    .line 736
    .local v5, "editListMediaTimes":[J
    iget-object v8, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    move/from16 v9, v23

    if-ne v8, v9, :cond_2a

    iget-object v8, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/16 v21, 0x0

    aget-wide v9, v8, v21

    cmp-long v8, v9, v18

    if-nez v8, :cond_2a

    .line 737
    aget-wide v8, v5, v21

    .line 738
    .local v8, "editStartTime":J
    sub-long v54, v6, v8

    iget-wide v10, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 739
    const-wide/32 v56, 0xf4240

    move-wide/from16 v58, v10

    invoke-static/range {v54 .. v59}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 741
    .local v8, "editedDurationUs":J
    move-wide/from16 v43, v8

    goto :goto_1f

    .line 742
    .end local v8    # "editedDurationUs":J
    :cond_2a
    const-wide/16 v8, 0x0

    .line 743
    .local v8, "pts":J
    const/4 v10, 0x0

    move-wide/from16 v54, v8

    .end local v8    # "pts":J
    .local v10, "i":I
    .local v54, "pts":J
    :goto_1e
    iget-object v8, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    if-ge v10, v8, :cond_2c

    .line 744
    aget-wide v8, v5, v10

    cmp-long v8, v8, v43

    if-eqz v8, :cond_2b

    .line 745
    iget-object v8, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v18, v8, v10

    add-long v54, v54, v18

    .line 743
    :cond_2b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    .line 748
    .end local v10    # "i":I
    :cond_2c
    const-wide/32 v56, 0xf4240

    iget-wide v8, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v58, v8

    invoke-static/range {v54 .. v59}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    move-wide/from16 v43, v8

    .line 750
    .end local v54    # "pts":J
    .local v43, "editedDurationUs":J
    :goto_1f
    new-instance v34, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v35, v1

    .end local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    .restart local v35    # "track":Landroidx/media3/extractor/mp4/Track;
    invoke-direct/range {v34 .. v45}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    move-object v8, v5

    move-object/from16 v5, v39

    .end local v35    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v39    # "timestamps":[J
    .restart local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    .local v5, "timestamps":[J
    .local v8, "editListMediaTimes":[J
    return-object v34

    .line 770
    .end local v5    # "timestamps":[J
    .end local v8    # "editListMediaTimes":[J
    .end local v43    # "editedDurationUs":J
    .restart local v39    # "timestamps":[J
    :cond_2d
    move-object/from16 v5, v39

    .end local v39    # "timestamps":[J
    .restart local v5    # "timestamps":[J
    iget-object v8, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_32

    iget v8, v1, Landroidx/media3/extractor/mp4/Track;->type:I

    if-ne v8, v11, :cond_32

    array-length v8, v5

    const/4 v11, 0x2

    if-lt v8, v11, :cond_32

    .line 773
    iget-object v8, v1, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    const/16 v21, 0x0

    aget-wide v54, v8, v21

    .line 774
    .local v54, "editStartTime":J
    iget-object v8, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v56, v8, v21

    iget-wide v9, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v64, v2

    .end local v2    # "durationUs":J
    .local v64, "durationUs":J
    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 776
    move-wide/from16 v60, v2

    move-wide/from16 v58, v9

    invoke-static/range {v56 .. v61}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    add-long v10, v54, v2

    .line 778
    .local v10, "editEndTime":J
    move-wide/from16 v8, v54

    const-wide/32 v2, 0xf4240

    .end local v54    # "editStartTime":J
    .local v8, "editStartTime":J
    invoke-static/range {v5 .. v11}, Landroidx/media3/extractor/mp4/BoxParser;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v20

    if-eqz v20, :cond_31

    .line 781
    sub-long v2, v6, v10

    move-wide/from16 v54, v6

    move-wide/from16 v6, v18

    .end local v6    # "duration":J
    .local v54, "duration":J
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v56

    .line 782
    .local v56, "paddingTimeUnits":J
    const/16 v21, 0x0

    aget-wide v2, v5, v21

    sub-long v66, v8, v2

    iget-object v2, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v2, v2

    iget-wide v6, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 783
    move-wide/from16 v68, v2

    move-wide/from16 v70, v6

    invoke-static/range {v66 .. v71}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 785
    .local v2, "encoderDelay":J
    iget-object v6, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v6, v6

    move-wide/from16 v58, v6

    iget-wide v6, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 786
    move-wide/from16 v60, v6

    invoke-static/range {v56 .. v61}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 787
    .local v6, "encoderPadding":J
    const-wide/16 v18, 0x0

    cmp-long v20, v2, v18

    if-nez v20, :cond_2f

    cmp-long v20, v6, v18

    if-eqz v20, :cond_2e

    goto :goto_20

    :cond_2e
    move/from16 v20, v0

    goto :goto_21

    :cond_2f
    :goto_20
    cmp-long v20, v2, v34

    if-gtz v20, :cond_30

    cmp-long v20, v6, v34

    if-gtz v20, :cond_30

    .line 790
    move/from16 v20, v0

    .end local v0    # "nextSynchronizationSampleIndex":I
    .local v20, "nextSynchronizationSampleIndex":I
    long-to-int v0, v2

    move-wide/from16 v58, v2

    move-object/from16 v2, p2

    .end local v2    # "encoderDelay":J
    .local v58, "encoderDelay":J
    iput v0, v2, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 791
    long-to-int v0, v6

    iput v0, v2, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 792
    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v60, v6

    const-wide/32 v6, 0xf4240

    .end local v6    # "encoderPadding":J
    .local v60, "encoderPadding":J
    invoke-static {v5, v6, v7, v2, v3}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 793
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/16 v21, 0x0

    aget-wide v66, v0, v21

    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 794
    const-wide/32 v68, 0xf4240

    move-wide/from16 v70, v2

    invoke-static/range {v66 .. v71}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v43

    .line 796
    .restart local v43    # "editedDurationUs":J
    new-instance v34, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v35, v1

    move-object/from16 v39, v5

    .end local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v5    # "timestamps":[J
    .restart local v35    # "track":Landroidx/media3/extractor/mp4/Track;
    .restart local v39    # "timestamps":[J
    invoke-direct/range {v34 .. v45}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    .end local v35    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v39    # "timestamps":[J
    .restart local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    .restart local v5    # "timestamps":[J
    return-object v34

    .line 787
    .end local v20    # "nextSynchronizationSampleIndex":I
    .end local v43    # "editedDurationUs":J
    .end local v58    # "encoderDelay":J
    .end local v60    # "encoderPadding":J
    .restart local v0    # "nextSynchronizationSampleIndex":I
    .restart local v2    # "encoderDelay":J
    .restart local v6    # "encoderPadding":J
    :cond_30
    move/from16 v20, v0

    move-wide/from16 v58, v2

    move-wide/from16 v60, v6

    .end local v0    # "nextSynchronizationSampleIndex":I
    .end local v2    # "encoderDelay":J
    .end local v6    # "encoderPadding":J
    .restart local v20    # "nextSynchronizationSampleIndex":I
    .restart local v58    # "encoderDelay":J
    .restart local v60    # "encoderPadding":J
    goto :goto_21

    .line 778
    .end local v20    # "nextSynchronizationSampleIndex":I
    .end local v54    # "duration":J
    .end local v56    # "paddingTimeUnits":J
    .end local v58    # "encoderDelay":J
    .end local v60    # "encoderPadding":J
    .restart local v0    # "nextSynchronizationSampleIndex":I
    .local v6, "duration":J
    :cond_31
    move/from16 v20, v0

    move-wide/from16 v54, v6

    .end local v0    # "nextSynchronizationSampleIndex":I
    .end local v6    # "duration":J
    .restart local v20    # "nextSynchronizationSampleIndex":I
    .restart local v54    # "duration":J
    goto :goto_21

    .line 770
    .end local v8    # "editStartTime":J
    .end local v10    # "editEndTime":J
    .end local v20    # "nextSynchronizationSampleIndex":I
    .end local v54    # "duration":J
    .end local v64    # "durationUs":J
    .restart local v0    # "nextSynchronizationSampleIndex":I
    .local v2, "durationUs":J
    .restart local v6    # "duration":J
    :cond_32
    move/from16 v20, v0

    move-wide/from16 v64, v2

    move-wide/from16 v54, v6

    .line 811
    .end local v0    # "nextSynchronizationSampleIndex":I
    .end local v2    # "durationUs":J
    .end local v6    # "duration":J
    .restart local v20    # "nextSynchronizationSampleIndex":I
    .restart local v54    # "duration":J
    .restart local v64    # "durationUs":J
    :goto_21
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_34

    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/16 v21, 0x0

    aget-wide v2, v0, v21

    const-wide/16 v18, 0x0

    cmp-long v0, v2, v18

    if-nez v0, :cond_34

    .line 815
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v2, v0, v21

    .line 816
    .local v2, "editStartTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v6, v5

    if-ge v0, v6, :cond_33

    .line 817
    aget-wide v6, v5, v0

    sub-long v56, v6, v2

    iget-wide v6, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 818
    const-wide/32 v58, 0xf4240

    move-wide/from16 v60, v6

    invoke-static/range {v56 .. v61}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    aput-wide v6, v5, v0

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 821
    .end local v0    # "i":I
    :cond_33
    sub-long v6, v54, v2

    iget-wide v10, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 822
    const-wide/32 v8, 0xf4240

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v43

    .line 823
    .end local v64    # "durationUs":J
    .local v43, "durationUs":J
    new-instance v34, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v35, v1

    move-object/from16 v39, v5

    .end local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v5    # "timestamps":[J
    .restart local v35    # "track":Landroidx/media3/extractor/mp4/Track;
    .restart local v39    # "timestamps":[J
    invoke-direct/range {v34 .. v45}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    move-object/from16 v0, v36

    move-object/from16 v5, v37

    move/from16 v9, v38

    move-object/from16 v10, v39

    move-object/from16 v6, v40

    move-object/from16 v7, v41

    move/from16 v8, v45

    .end local v35    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v36    # "offsets":[J
    .end local v37    # "sizes":[I
    .end local v38    # "maximumSize":I
    .end local v39    # "timestamps":[J
    .end local v40    # "flags":[I
    .end local v41    # "syncSampleIndices":[I
    .end local v45    # "sampleCount":I
    .local v0, "offsets":[J
    .restart local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    .local v5, "sizes":[I
    .local v6, "flags":[I
    .local v7, "syncSampleIndices":[I
    .local v8, "sampleCount":I
    .local v9, "maximumSize":I
    .local v10, "timestamps":[J
    return-object v34

    .line 811
    .end local v0    # "offsets":[J
    .end local v2    # "editStartTime":J
    .end local v6    # "flags":[I
    .end local v7    # "syncSampleIndices":[I
    .end local v8    # "sampleCount":I
    .end local v9    # "maximumSize":I
    .end local v10    # "timestamps":[J
    .end local v43    # "durationUs":J
    .local v5, "timestamps":[J
    .restart local v36    # "offsets":[J
    .restart local v37    # "sizes":[I
    .restart local v38    # "maximumSize":I
    .restart local v40    # "flags":[I
    .restart local v41    # "syncSampleIndices":[I
    .restart local v45    # "sampleCount":I
    .restart local v64    # "durationUs":J
    :cond_34
    move-object v10, v5

    move-object/from16 v0, v36

    move-object/from16 v5, v37

    move/from16 v9, v38

    move-object/from16 v6, v40

    move-object/from16 v7, v41

    move/from16 v8, v45

    .line 840
    .end local v36    # "offsets":[J
    .end local v37    # "sizes":[I
    .end local v38    # "maximumSize":I
    .end local v40    # "flags":[I
    .end local v41    # "syncSampleIndices":[I
    .end local v45    # "sampleCount":I
    .restart local v0    # "offsets":[J
    .local v5, "sizes":[I
    .restart local v6    # "flags":[I
    .restart local v7    # "syncSampleIndices":[I
    .restart local v8    # "sampleCount":I
    .restart local v9    # "maximumSize":I
    .restart local v10    # "timestamps":[J
    iget v2, v1, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_35

    const/4 v2, 0x1

    goto :goto_23

    :cond_35
    const/4 v2, 0x0

    .line 843
    .local v2, "omitZeroDurationClippedSample":Z
    :goto_23
    const/4 v3, 0x0

    .line 844
    .local v3, "editedSampleCount":I
    const/4 v11, 0x0

    .line 845
    .local v11, "nextSampleIndex":I
    const/16 v34, 0x0

    .line 846
    .local v34, "copyMetadata":Z
    move/from16 v35, v3

    .end local v3    # "editedSampleCount":I
    .local v35, "editedSampleCount":I
    iget-object v3, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v3, v3

    new-array v3, v3, [I

    .line 847
    .local v3, "startIndices":[I
    move-object/from16 v56, v3

    .end local v3    # "startIndices":[I
    .local v56, "startIndices":[I
    iget-object v3, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v3, v3

    new-array v3, v3, [I

    .line 848
    .local v3, "endIndices":[I
    move-object/from16 v57, v3

    .end local v3    # "endIndices":[I
    .local v57, "endIndices":[I
    iget-object v3, v1, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 849
    .local v3, "editListMediaTimes":[J
    const/16 v36, 0x0

    move-object/from16 v58, v3

    move-object/from16 v59, v4

    move v3, v11

    move/from16 v11, v35

    move/from16 v4, v36

    .end local v35    # "editedSampleCount":I
    .local v3, "nextSampleIndex":I
    .local v4, "i":I
    .local v11, "editedSampleCount":I
    .local v58, "editListMediaTimes":[J
    .local v59, "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    :goto_24
    move-object/from16 v60, v7

    .end local v7    # "syncSampleIndices":[I
    .local v60, "syncSampleIndices":[I
    iget-object v7, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v7, v7

    if-ge v4, v7, :cond_3f

    .line 850
    move v7, v12

    move/from16 v61, v13

    .end local v12    # "timestampDeltaInTimeUnits":I
    .end local v13    # "remainingSamplesAtTimestampDelta":I
    .local v7, "timestampDeltaInTimeUnits":I
    .local v61, "remainingSamplesAtTimestampDelta":I
    aget-wide v12, v58, v4

    .line 851
    .local v12, "editMediaTime":J
    cmp-long v35, v12, v43

    if-eqz v35, :cond_3e

    .line 852
    move/from16 v35, v4

    .end local v4    # "i":I
    .local v35, "i":I
    iget-object v4, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v36, v4, v35

    move v4, v14

    move/from16 v62, v15

    .end local v14    # "timestampOffset":I
    .end local v15    # "remainingSynchronizationSamples":I
    .local v4, "timestampOffset":I
    .local v62, "remainingSynchronizationSamples":I
    iget-wide v14, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v38, v14

    iget-wide v14, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 853
    move-wide/from16 v40, v14

    invoke-static/range {v36 .. v41}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v14

    .line 855
    .local v14, "editDuration":J
    move-wide/from16 v36, v14

    .end local v14    # "editDuration":J
    .local v36, "editDuration":J
    add-long v14, v12, v36

    .line 864
    .local v14, "editEndTime":J
    nop

    .line 865
    move/from16 v63, v4

    const/4 v4, 0x1

    .end local v4    # "timestampOffset":I
    .local v63, "timestampOffset":I
    invoke-static {v10, v12, v13, v4, v4}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v38

    aput v38, v56, v35

    .line 870
    nop

    .line 871
    const/4 v4, 0x0

    invoke-static {v10, v14, v15, v2, v4}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result v38

    .line 880
    .local v38, "firstSampleAfterEdit":I
    const/4 v4, 0x0

    .line 881
    .local v4, "samplesSeenAfterEnd":I
    add-int/lit8 v39, v38, -0x1

    .line 882
    .local v39, "maxValidIndexInWindow":I
    move/from16 v40, v38

    move/from16 v66, v2

    move/from16 v2, v40

    .local v2, "j":I
    .local v66, "omitZeroDurationClippedSample":Z
    :goto_25
    move/from16 v40, v4

    .end local v4    # "samplesSeenAfterEnd":I
    .local v40, "samplesSeenAfterEnd":I
    array-length v4, v10

    if-ge v2, v4, :cond_38

    .line 883
    aget-wide v67, v10, v2

    cmp-long v4, v67, v14

    if-gez v4, :cond_36

    .line 885
    move v4, v2

    move/from16 v41, v2

    move/from16 v39, v4

    move/from16 v4, v40

    .end local v39    # "maxValidIndexInWindow":I
    .local v4, "maxValidIndexInWindow":I
    goto :goto_26

    .line 888
    .end local v4    # "maxValidIndexInWindow":I
    .restart local v39    # "maxValidIndexInWindow":I
    :cond_36
    add-int/lit8 v4, v40, 0x1

    .line 889
    .end local v40    # "samplesSeenAfterEnd":I
    .local v4, "samplesSeenAfterEnd":I
    move/from16 v41, v2

    .end local v2    # "j":I
    .local v41, "j":I
    iget-object v2, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    if-le v4, v2, :cond_37

    .line 891
    goto :goto_27

    .line 882
    :cond_37
    :goto_26
    add-int/lit8 v2, v41, 0x1

    .end local v41    # "j":I
    .restart local v2    # "j":I
    goto :goto_25

    .end local v4    # "samplesSeenAfterEnd":I
    .restart local v40    # "samplesSeenAfterEnd":I
    :cond_38
    move/from16 v41, v2

    .end local v2    # "j":I
    .restart local v41    # "j":I
    move/from16 v4, v40

    .line 895
    .end local v40    # "samplesSeenAfterEnd":I
    .end local v41    # "j":I
    .restart local v4    # "samplesSeenAfterEnd":I
    :goto_27
    add-int/lit8 v2, v39, 0x1

    aput v2, v57, v35

    .line 898
    aget v2, v56, v35

    .line 899
    .local v2, "initialStartIndex":I
    :goto_28
    aget v40, v56, v35

    if-lez v40, :cond_39

    aget v40, v56, v35

    aget v40, v6, v40

    const/16 v23, 0x1

    and-int/lit8 v40, v40, 0x1

    if-nez v40, :cond_39

    .line 900
    aget v40, v56, v35

    add-int/lit8 v40, v40, -0x1

    aput v40, v56, v35

    goto :goto_28

    .line 905
    :cond_39
    aget v40, v56, v35

    if-nez v40, :cond_3b

    const/16 v21, 0x0

    aget v40, v6, v21

    const/16 v23, 0x1

    and-int/lit8 v40, v40, 0x1

    if-nez v40, :cond_3a

    .line 906
    aput v2, v56, v35

    .line 907
    :goto_29
    move/from16 v40, v2

    .end local v2    # "initialStartIndex":I
    .local v40, "initialStartIndex":I
    aget v2, v56, v35

    move/from16 v41, v4

    .end local v4    # "samplesSeenAfterEnd":I
    .local v41, "samplesSeenAfterEnd":I
    aget v4, v57, v35

    if-ge v2, v4, :cond_3c

    aget v2, v56, v35

    aget v2, v6, v2

    const/16 v23, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3c

    .line 909
    aget v2, v56, v35

    add-int/lit8 v2, v2, 0x1

    aput v2, v56, v35

    move/from16 v2, v40

    move/from16 v4, v41

    goto :goto_29

    .line 905
    .end local v40    # "initialStartIndex":I
    .end local v41    # "samplesSeenAfterEnd":I
    .restart local v2    # "initialStartIndex":I
    .restart local v4    # "samplesSeenAfterEnd":I
    :cond_3a
    move/from16 v40, v2

    move/from16 v41, v4

    goto :goto_2a

    :cond_3b
    move/from16 v40, v2

    move/from16 v41, v4

    const/16 v21, 0x0

    .line 913
    .end local v2    # "initialStartIndex":I
    .end local v4    # "samplesSeenAfterEnd":I
    .restart local v40    # "initialStartIndex":I
    .restart local v41    # "samplesSeenAfterEnd":I
    :cond_3c
    :goto_2a
    aget v2, v57, v35

    aget v4, v56, v35

    sub-int/2addr v2, v4

    add-int/2addr v11, v2

    .line 914
    aget v2, v56, v35

    if-eq v3, v2, :cond_3d

    const/4 v2, 0x1

    goto :goto_2b

    :cond_3d
    move/from16 v2, v21

    :goto_2b
    or-int v2, v34, v2

    .line 915
    .end local v34    # "copyMetadata":Z
    .local v2, "copyMetadata":Z
    aget v3, v57, v35

    move/from16 v34, v2

    goto :goto_2c

    .line 851
    .end local v35    # "i":I
    .end local v36    # "editDuration":J
    .end local v38    # "firstSampleAfterEdit":I
    .end local v39    # "maxValidIndexInWindow":I
    .end local v40    # "initialStartIndex":I
    .end local v41    # "samplesSeenAfterEnd":I
    .end local v62    # "remainingSynchronizationSamples":I
    .end local v63    # "timestampOffset":I
    .end local v66    # "omitZeroDurationClippedSample":Z
    .local v2, "omitZeroDurationClippedSample":Z
    .local v4, "i":I
    .local v14, "timestampOffset":I
    .restart local v15    # "remainingSynchronizationSamples":I
    .restart local v34    # "copyMetadata":Z
    :cond_3e
    move/from16 v66, v2

    move/from16 v35, v4

    move/from16 v63, v14

    move/from16 v62, v15

    const/16 v21, 0x0

    .line 849
    .end local v2    # "omitZeroDurationClippedSample":Z
    .end local v4    # "i":I
    .end local v12    # "editMediaTime":J
    .end local v14    # "timestampOffset":I
    .end local v15    # "remainingSynchronizationSamples":I
    .restart local v35    # "i":I
    .restart local v62    # "remainingSynchronizationSamples":I
    .restart local v63    # "timestampOffset":I
    .restart local v66    # "omitZeroDurationClippedSample":Z
    :goto_2c
    add-int/lit8 v4, v35, 0x1

    move v12, v7

    move-object/from16 v7, v60

    move/from16 v13, v61

    move/from16 v15, v62

    move/from16 v14, v63

    move/from16 v2, v66

    .end local v35    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_24

    .end local v7    # "timestampDeltaInTimeUnits":I
    .end local v61    # "remainingSamplesAtTimestampDelta":I
    .end local v62    # "remainingSynchronizationSamples":I
    .end local v63    # "timestampOffset":I
    .end local v66    # "omitZeroDurationClippedSample":Z
    .restart local v2    # "omitZeroDurationClippedSample":Z
    .local v12, "timestampDeltaInTimeUnits":I
    .restart local v13    # "remainingSamplesAtTimestampDelta":I
    .restart local v14    # "timestampOffset":I
    .restart local v15    # "remainingSynchronizationSamples":I
    :cond_3f
    move/from16 v66, v2

    move/from16 v35, v4

    move v7, v12

    move/from16 v61, v13

    move/from16 v63, v14

    move/from16 v62, v15

    const/16 v21, 0x0

    .line 918
    .end local v2    # "omitZeroDurationClippedSample":Z
    .end local v4    # "i":I
    .end local v12    # "timestampDeltaInTimeUnits":I
    .end local v13    # "remainingSamplesAtTimestampDelta":I
    .end local v14    # "timestampOffset":I
    .end local v15    # "remainingSynchronizationSamples":I
    .restart local v7    # "timestampDeltaInTimeUnits":I
    .restart local v61    # "remainingSamplesAtTimestampDelta":I
    .restart local v62    # "remainingSynchronizationSamples":I
    .restart local v63    # "timestampOffset":I
    .restart local v66    # "omitZeroDurationClippedSample":Z
    if-eq v11, v8, :cond_40

    const/4 v2, 0x1

    goto :goto_2d

    :cond_40
    move/from16 v2, v21

    :goto_2d
    or-int v2, v34, v2

    .line 921
    .end local v34    # "copyMetadata":Z
    .local v2, "copyMetadata":Z
    if-eqz v2, :cond_41

    new-array v4, v11, [J

    move-object/from16 v36, v4

    goto :goto_2e

    :cond_41
    move-object/from16 v36, v0

    :goto_2e
    move-object/from16 v4, v36

    .line 922
    .local v4, "editedOffsets":[J
    if-eqz v2, :cond_42

    new-array v12, v11, [I

    move-object/from16 v37, v12

    goto :goto_2f

    :cond_42
    move-object/from16 v37, v5

    :goto_2f
    move-object/from16 v12, v37

    .line 923
    .local v12, "editedSizes":[I
    if-eqz v2, :cond_43

    goto :goto_30

    :cond_43
    move/from16 v21, v9

    .line 924
    .local v21, "editedMaximumSize":I
    :goto_30
    if-eqz v2, :cond_44

    new-array v13, v11, [I

    move-object/from16 v40, v13

    goto :goto_31

    :cond_44
    move-object/from16 v40, v6

    :goto_31
    move-object/from16 v13, v40

    .line 926
    .local v13, "editedFlags":[I
    if-eqz v2, :cond_45

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_32

    :cond_45
    move-object/from16 v14, v33

    .line 927
    .local v14, "editedSyncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_32
    new-array v15, v11, [J

    .line 928
    .local v15, "editedTimestamps":[J
    const-wide/16 v34, 0x0

    .line 929
    .local v34, "pts":J
    const/16 v36, 0x0

    .line 930
    .local v36, "sampleIndex":I
    const/16 v37, 0x0

    .line 931
    .local v37, "hasPrerollSamples":Z
    const/16 v38, 0x0

    move/from16 v74, v3

    move-wide/from16 v67, v34

    move/from16 v73, v37

    move/from16 v3, v38

    move/from16 v38, v21

    move/from16 v21, v2

    move/from16 v2, v36

    .end local v34    # "pts":J
    .end local v36    # "sampleIndex":I
    .end local v37    # "hasPrerollSamples":Z
    .local v2, "sampleIndex":I
    .local v3, "i":I
    .local v21, "copyMetadata":Z
    .local v38, "editedMaximumSize":I
    .local v67, "pts":J
    .local v73, "hasPrerollSamples":Z
    .local v74, "nextSampleIndex":I
    :goto_33
    move/from16 v75, v7

    .end local v7    # "timestampDeltaInTimeUnits":I
    .local v75, "timestampDeltaInTimeUnits":I
    iget-object v7, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v7, v7

    if-ge v3, v7, :cond_4c

    .line 932
    iget-object v7, v1, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v34, v7, v3

    .line 933
    .local v34, "editMediaTime":J
    aget v7, v56, v3

    .line 934
    .local v7, "startIndex":I
    move/from16 v36, v3

    .end local v3    # "i":I
    .local v36, "i":I
    aget v3, v57, v36

    .line 935
    .local v3, "endIndex":I
    if-eqz v21, :cond_46

    .line 936
    move/from16 v76, v8

    .end local v8    # "sampleCount":I
    .local v76, "sampleCount":I
    sub-int v8, v3, v7

    .line 937
    .local v8, "count":I
    invoke-static {v0, v7, v4, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    invoke-static {v5, v7, v12, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 939
    invoke-static {v6, v7, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_34

    .line 935
    .end local v76    # "sampleCount":I
    .local v8, "sampleCount":I
    :cond_46
    move/from16 v76, v8

    .line 941
    .end local v8    # "sampleCount":I
    .restart local v76    # "sampleCount":I
    :goto_34
    move v8, v7

    move-object/from16 v77, v0

    move/from16 v0, v38

    .end local v38    # "editedMaximumSize":I
    .local v0, "editedMaximumSize":I
    .local v8, "j":I
    .local v77, "offsets":[J
    :goto_35
    if-ge v8, v3, :cond_4b

    .line 942
    const-wide/32 v69, 0xf4240

    move/from16 v38, v2

    move/from16 v37, v3

    .end local v2    # "sampleIndex":I
    .end local v3    # "endIndex":I
    .local v37, "endIndex":I
    .local v38, "sampleIndex":I
    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v71, v2

    invoke-static/range {v67 .. v72}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 943
    .local v2, "ptsUs":J
    aget-wide v39, v10, v8

    sub-long v78, v39, v34

    move-wide/from16 v39, v2

    .end local v2    # "ptsUs":J
    .local v39, "ptsUs":J
    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 944
    const-wide/32 v80, 0xf4240

    move-wide/from16 v82, v2

    invoke-static/range {v78 .. v83}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 946
    .local v2, "timeInSegmentUs":J
    const-wide/16 v18, 0x0

    cmp-long v41, v2, v18

    if-gez v41, :cond_47

    .line 947
    const/16 v73, 0x1

    .line 949
    :cond_47
    add-long v43, v39, v2

    aput-wide v43, v15, v38

    .line 950
    if-eqz v21, :cond_48

    move-wide/from16 v43, v2

    .end local v2    # "timeInSegmentUs":J
    .local v43, "timeInSegmentUs":J
    aget v2, v12, v38

    if-le v2, v0, :cond_49

    .line 951
    aget v0, v5, v8

    goto :goto_36

    .line 950
    .end local v43    # "timeInSegmentUs":J
    .restart local v2    # "timeInSegmentUs":J
    :cond_48
    move-wide/from16 v43, v2

    .line 953
    .end local v2    # "timeInSegmentUs":J
    .restart local v43    # "timeInSegmentUs":J
    :cond_49
    :goto_36
    if-eqz v21, :cond_4a

    if-nez v42, :cond_4a

    aget v2, v13, v38

    const/16 v23, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4a

    .line 956
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    :cond_4a
    nop

    .end local v39    # "ptsUs":J
    .end local v43    # "timeInSegmentUs":J
    add-int/lit8 v2, v38, 0x1

    .line 941
    .end local v38    # "sampleIndex":I
    .local v2, "sampleIndex":I
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v37

    goto :goto_35

    .end local v37    # "endIndex":I
    .restart local v3    # "endIndex":I
    :cond_4b
    move/from16 v38, v2

    move/from16 v37, v3

    const-wide/16 v18, 0x0

    .line 960
    .end local v2    # "sampleIndex":I
    .end local v3    # "endIndex":I
    .end local v8    # "j":I
    .restart local v37    # "endIndex":I
    .restart local v38    # "sampleIndex":I
    iget-object v2, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v39, v2, v36

    add-long v67, v67, v39

    .line 931
    .end local v7    # "startIndex":I
    .end local v34    # "editMediaTime":J
    .end local v37    # "endIndex":I
    add-int/lit8 v3, v36, 0x1

    move/from16 v2, v38

    move/from16 v7, v75

    move/from16 v8, v76

    move/from16 v38, v0

    move-object/from16 v0, v77

    .end local v36    # "i":I
    .local v3, "i":I
    goto/16 :goto_33

    .end local v76    # "sampleCount":I
    .end local v77    # "offsets":[J
    .local v0, "offsets":[J
    .restart local v2    # "sampleIndex":I
    .local v8, "sampleCount":I
    .local v38, "editedMaximumSize":I
    :cond_4c
    move-object/from16 v77, v0

    move/from16 v36, v3

    move/from16 v76, v8

    .line 962
    .end local v0    # "offsets":[J
    .end local v3    # "i":I
    .end local v8    # "sampleCount":I
    .restart local v76    # "sampleCount":I
    .restart local v77    # "offsets":[J
    iget-wide v7, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 963
    const-wide/32 v69, 0xf4240

    move-wide/from16 v71, v7

    invoke-static/range {v67 .. v72}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v43

    .line 964
    .local v43, "editedDurationUs":J
    if-eqz v73, :cond_4d

    .line 965
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setHasPrerollSamples(Z)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 966
    .local v0, "format":Landroidx/media3/common/Format;
    invoke-virtual {v1, v0}, Landroidx/media3/extractor/mp4/Track;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v1

    move-object/from16 v35, v1

    goto :goto_37

    .line 964
    .end local v0    # "format":Landroidx/media3/common/Format;
    :cond_4d
    move-object/from16 v35, v1

    .line 968
    .end local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    .local v35, "track":Landroidx/media3/extractor/mp4/Track;
    :goto_37
    new-instance v34, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 975
    invoke-static {v14}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v41

    array-length v0, v4

    move/from16 v45, v0

    move-object/from16 v36, v4

    move-object/from16 v37, v12

    move-object/from16 v40, v13

    move-object/from16 v39, v15

    .end local v4    # "editedOffsets":[J
    .end local v12    # "editedSizes":[I
    .end local v13    # "editedFlags":[I
    .end local v15    # "editedTimestamps":[J
    .local v36, "editedOffsets":[J
    .local v37, "editedSizes":[I
    .local v39, "editedTimestamps":[J
    .local v40, "editedFlags":[I
    invoke-direct/range {v34 .. v45}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    .line 968
    return-object v34

    .line 458
    .end local v5    # "sizes":[I
    .end local v6    # "flags":[I
    .end local v9    # "maximumSize":I
    .end local v10    # "timestamps":[J
    .end local v11    # "editedSampleCount":I
    .end local v16    # "remainingTimestampDeltaChanges":I
    .end local v17    # "stszAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v20    # "nextSynchronizationSampleIndex":I
    .end local v21    # "copyMetadata":Z
    .end local v22    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .end local v24    # "remainingSamplesAtTimestampOffset":I
    .end local v25    # "remainingTimestampOffsetChanges":I
    .end local v26    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .end local v27    # "chunkOffsetsAreLongs":Z
    .end local v28    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v29    # "stssAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v30    # "cttsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v31    # "sampleSizeBox":Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
    .end local v32    # "sampleMimeType":Ljava/lang/String;
    .end local v33    # "syncSampleIndicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v35    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v36    # "editedOffsets":[J
    .end local v37    # "editedSizes":[I
    .end local v38    # "editedMaximumSize":I
    .end local v39    # "editedTimestamps":[J
    .end local v40    # "editedFlags":[I
    .end local v42    # "hasOnlySyncSamples":Z
    .end local v43    # "editedDurationUs":J
    .end local v46    # "rechunkFixedSizeSamples":Z
    .end local v47    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v48    # "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v49    # "fixedSampleSize":I
    .end local v50    # "timestampTimeUnits":J
    .end local v52    # "totalSize":J
    .end local v54    # "duration":J
    .end local v56    # "startIndices":[I
    .end local v57    # "endIndices":[I
    .end local v58    # "editListMediaTimes":[J
    .end local v59    # "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    .end local v60    # "syncSampleIndices":[I
    .end local v61    # "remainingSamplesAtTimestampDelta":I
    .end local v62    # "remainingSynchronizationSamples":I
    .end local v63    # "timestampOffset":I
    .end local v64    # "durationUs":J
    .end local v66    # "omitZeroDurationClippedSample":Z
    .end local v67    # "pts":J
    .end local v73    # "hasPrerollSamples":Z
    .end local v74    # "nextSampleIndex":I
    .end local v75    # "timestampDeltaInTimeUnits":I
    .end local v76    # "sampleCount":I
    .end local v77    # "offsets":[J
    .local v2, "stz2Atom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v14, "stszAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local p0, "track":Landroidx/media3/extractor/mp4/Track;
    :cond_4e
    move-object v0, v2

    .end local v2    # "stz2Atom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v0, "stz2Atom":Landroidx/media3/container/Mp4Box$LeafBox;
    const-string v2, "Track has no sample table size information"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2
.end method

.method private static parseStereoViewBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$EyesData;
    .locals 11
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2562
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2563
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 2564
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_5

    .line 2565
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2566
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2567
    .local v1, "childAtomSize":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2568
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x73747269

    if-ne v4, v5, :cond_4

    .line 2570
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2571
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    .line 2572
    .local v4, "striInfo":I
    new-instance v5, Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    new-instance v6, Landroidx/media3/extractor/mp4/BoxParser$StriData;

    and-int/lit8 v7, v4, 0x1

    if-ne v7, v3, :cond_1

    move v7, v3

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    and-int/lit8 v8, v4, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    move v8, v3

    goto :goto_3

    :cond_2
    move v8, v2

    :goto_3
    and-int/lit8 v9, v4, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v6, v7, v8, v2}, Landroidx/media3/extractor/mp4/BoxParser$StriData;-><init>(ZZZ)V

    invoke-direct {v5, v6}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;-><init>(Landroidx/media3/extractor/mp4/BoxParser$StriData;)V

    return-object v5

    .line 2578
    .end local v4    # "striInfo":I
    :cond_4
    add-int/2addr v0, v1

    .line 2579
    .end local v1    # "childAtomSize":I
    goto :goto_0

    .line 2580
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseStsd(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/BoxParser$TkhdData;Ljava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .locals 11
    .param p0, "stsd"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "tkhdData"    # Landroidx/media3/extractor/mp4/BoxParser$TkhdData;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p4, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1207
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1208
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 1209
    .local v10, "numberOfEntries":I
    new-instance v8, Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    invoke-direct {v8, v10}, Landroidx/media3/extractor/mp4/BoxParser$StsdData;-><init>(I)V

    .line 1210
    .local v8, "out":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_9

    .line 1211
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 1212
    .local v2, "childStartPosition":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 1213
    .local v3, "childAtomSize":I
    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v4, "childAtomSize must be positive"

    invoke-static {v1, v4}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1215
    .local v1, "childAtomType":I
    const v4, 0x61766331

    if-eq v1, v4, :cond_7

    const v4, 0x61766333

    if-eq v1, v4, :cond_7

    const v4, 0x656e6376

    if-eq v1, v4, :cond_7

    const v4, 0x6d317620

    if-eq v1, v4, :cond_7

    const v4, 0x6d703476

    if-eq v1, v4, :cond_7

    const v4, 0x68766331

    if-eq v1, v4, :cond_7

    const v4, 0x68657631

    if-eq v1, v4, :cond_7

    const v4, 0x76766331

    if-eq v1, v4, :cond_7

    const v4, 0x76766931

    if-eq v1, v4, :cond_7

    const v4, 0x73323633

    if-eq v1, v4, :cond_7

    const v4, 0x48323633

    if-eq v1, v4, :cond_7

    const v4, 0x68323633

    if-eq v1, v4, :cond_7

    const v4, 0x76703038

    if-eq v1, v4, :cond_7

    const v4, 0x76703039

    if-eq v1, v4, :cond_7

    const v4, 0x61763031

    if-eq v1, v4, :cond_7

    const v4, 0x64766176

    if-eq v1, v4, :cond_7

    const v4, 0x64766131

    if-eq v1, v4, :cond_7

    const v4, 0x64766865

    if-eq v1, v4, :cond_7

    const v4, 0x64766831

    if-eq v1, v4, :cond_7

    const v4, 0x61707631

    if-eq v1, v4, :cond_7

    const v4, 0x64617631

    if-ne v1, v4, :cond_1

    goto/16 :goto_4

    .line 1247
    :cond_1
    const v4, 0x6d703461

    if-eq v1, v4, :cond_6

    const v4, 0x656e6361

    if-eq v1, v4, :cond_6

    const v4, 0x61632d33

    if-eq v1, v4, :cond_6

    const v4, 0x65632d33

    if-eq v1, v4, :cond_6

    const v4, 0x61632d34

    if-eq v1, v4, :cond_6

    const v4, 0x6d6c7061

    if-eq v1, v4, :cond_6

    const v4, 0x64747363

    if-eq v1, v4, :cond_6

    const v4, 0x64747365

    if-eq v1, v4, :cond_6

    const v4, 0x64747368

    if-eq v1, v4, :cond_6

    const v4, 0x6474736c

    if-eq v1, v4, :cond_6

    const v4, 0x64747378

    if-eq v1, v4, :cond_6

    const v4, 0x73616d72

    if-eq v1, v4, :cond_6

    const v4, 0x73617762

    if-eq v1, v4, :cond_6

    const v4, 0x6c70636d

    if-eq v1, v4, :cond_6

    const v4, 0x736f7774

    if-eq v1, v4, :cond_6

    const v4, 0x74776f73

    if-eq v1, v4, :cond_6

    const v4, 0x2e6d7032

    if-eq v1, v4, :cond_6

    const v4, 0x2e6d7033

    if-eq v1, v4, :cond_6

    const v4, 0x6d686131

    if-eq v1, v4, :cond_6

    const v4, 0x6d686d31

    if-eq v1, v4, :cond_6

    const v4, 0x616c6163

    if-eq v1, v4, :cond_6

    const v4, 0x616c6177

    if-eq v1, v4, :cond_6

    const v4, 0x756c6177

    if-eq v1, v4, :cond_6

    const v4, 0x4f707573

    if-eq v1, v4, :cond_6

    const v4, 0x664c6143

    if-eq v1, v4, :cond_6

    const v4, 0x69616d66

    if-eq v1, v4, :cond_6

    const v4, 0x6970636d

    if-eq v1, v4, :cond_6

    const v4, 0x6670636d

    if-ne v1, v4, :cond_2

    goto :goto_3

    .line 1286
    :cond_2
    const v4, 0x54544d4c

    if-eq v1, v4, :cond_5

    const v4, 0x74783367

    if-eq v1, v4, :cond_5

    const v4, 0x77767474

    if-eq v1, v4, :cond_5

    const v4, 0x73747070

    if-eq v1, v4, :cond_5

    const v4, 0x63363038

    if-eq v1, v4, :cond_5

    const v4, 0x6d703473

    if-ne v1, v4, :cond_3

    goto :goto_2

    .line 1294
    :cond_3
    const v4, 0x6d657474

    if-ne v1, v4, :cond_4

    .line 1295
    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$300(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v4

    invoke-static {p0, v1, v2, v4, v8}, Landroidx/media3/extractor/mp4/BoxParser;->parseMetaDataSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/BoxParser$StsdData;)V

    goto :goto_5

    .line 1296
    :cond_4
    const v4, 0x63616d6d

    if-ne v1, v4, :cond_8

    .line 1297
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1299
    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$300(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1300
    const-string v5, "application/x-camera-motion"

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1301
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    iput-object v4, v8, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_5

    .line 1292
    :cond_5
    :goto_2
    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v8

    .end local v8    # "out":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .local v6, "out":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    invoke-static/range {v0 .. v6}, Landroidx/media3/extractor/mp4/BoxParser;->parseTextSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/BoxParser$TkhdData;Ljava/lang/String;Landroidx/media3/extractor/mp4/BoxParser$StsdData;)V

    .end local v6    # "out":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .restart local v8    # "out":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    goto :goto_5

    .line 1275
    :cond_6
    :goto_3
    nop

    .line 1280
    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$300(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v4

    .line 1275
    move-object v0, p0

    move-object v5, p2

    move-object v7, p3

    move v6, p4

    invoke-static/range {v0 .. v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseAudioSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V

    goto :goto_5

    .line 1236
    :cond_7
    :goto_4
    nop

    .line 1241
    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$300(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v4

    .line 1243
    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$600(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v6

    .line 1236
    move-object v0, p0

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v0 .. v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V

    .line 1303
    :cond_8
    :goto_5
    add-int v4, v2, v3

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1210
    .end local v1    # "childAtomType":I
    .end local v2    # "childStartPosition":I
    .end local v3    # "childAtomSize":I
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1305
    .end local v9    # "i":I
    :cond_9
    return-object v8
.end method

.method private static parseTextSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/BoxParser$TkhdData;Ljava/lang/String;Landroidx/media3/extractor/mp4/BoxParser$StsdData;)V
    .locals 11
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "atomSize"    # I
    .param p4, "tkhdData"    # Landroidx/media3/extractor/mp4/BoxParser$TkhdData;
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "out"    # Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    .line 1316
    move-object/from16 v0, p6

    add-int/lit8 v1, p2, 0x8

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1319
    const/4 v1, 0x0

    .line 1320
    .local v1, "initializationData":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<[B>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 1322
    .local v2, "subsampleOffsetUs":J
    const/4 v4, 0x0

    .line 1323
    .local v4, "mimeType":Ljava/lang/String;
    const v5, 0x54544d4c

    if-ne p1, v5, :cond_0

    .line 1324
    const-string v4, "application/ttml+xml"

    goto/16 :goto_2

    .line 1325
    :cond_0
    const v5, 0x74783367

    if-ne p1, v5, :cond_1

    .line 1326
    const-string v4, "application/x-quicktime-tx3g"

    .line 1327
    add-int/lit8 v5, p3, -0x8

    add-int/lit8 v5, v5, -0x8

    .line 1328
    .local v5, "sampleDescriptionLength":I
    new-array v6, v5, [B

    .line 1329
    .local v6, "sampleDescriptionData":[B
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1330
    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1331
    .end local v5    # "sampleDescriptionLength":I
    .end local v6    # "sampleDescriptionData":[B
    goto :goto_2

    :cond_1
    const v5, 0x77767474

    if-ne p1, v5, :cond_2

    .line 1332
    const-string v4, "application/x-mp4-vtt"

    goto :goto_2

    .line 1333
    :cond_2
    const v5, 0x73747070

    if-ne p1, v5, :cond_3

    .line 1334
    const-string v4, "application/ttml+xml"

    .line 1335
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 1336
    :cond_3
    const v5, 0x63363038

    if-ne p1, v5, :cond_4

    .line 1338
    const-string v4, "application/x-mp4-cea-608"

    .line 1339
    const/4 v5, 0x1

    iput v5, v0, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->requiredSampleTransformation:I

    goto :goto_2

    .line 1340
    :cond_4
    const v5, 0x6d703473

    if-ne p1, v5, :cond_9

    .line 1341
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 1342
    .local v5, "pos":I
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1343
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 1344
    .local v6, "childAtomType":I
    const v7, 0x65736473

    if-ne v6, v7, :cond_7

    .line 1345
    invoke-static {p0, v5}, Landroidx/media3/extractor/mp4/BoxParser;->parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v7

    .line 1346
    .local v7, "esds":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    invoke-static {v7}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$700(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {v7}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$700(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B

    move-result-object v8

    array-length v8, v8

    const/16 v9, 0x40

    if-eq v8, v9, :cond_5

    goto :goto_0

    .line 1349
    :cond_5
    const-string v4, "application/vobsub"

    .line 1350
    invoke-static {v7}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$700(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B

    move-result-object v8

    invoke-static {p4}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$800(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v9

    invoke-static {p4}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$900(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroidx/media3/extractor/mp4/BoxParser;->formatVobsubIdx([BII)Ljava/lang/String;

    move-result-object v8

    .line 1351
    .local v8, "idx":Ljava/lang/String;
    invoke-static {v8}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_1

    .line 1347
    .end local v8    # "idx":Ljava/lang/String;
    :cond_6
    :goto_0
    return-void

    .line 1353
    .end local v5    # "pos":I
    .end local v6    # "childAtomType":I
    .end local v7    # "esds":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    :cond_7
    :goto_1
    nop

    .line 1358
    :goto_2
    if-eqz v4, :cond_8

    .line 1359
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1361
    invoke-static {p4}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$300(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1362
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1363
    move-object/from16 v6, p5

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1364
    invoke-virtual {v5, v2, v3}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1365
    invoke-virtual {v5, v1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1366
    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_3

    .line 1358
    :cond_8
    move-object/from16 v6, p5

    .line 1368
    :goto_3
    return-void

    .line 1355
    :cond_9
    move-object/from16 v6, p5

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5
.end method

.method private static parseTkhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$TkhdData;
    .locals 20
    .param p0, "tkhd"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1039
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1040
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1041
    .local v2, "fullAtom":I
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v3

    .line 1043
    .local v3, "version":I
    if-nez v3, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/16 v5, 0x10

    :goto_0
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1044
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 1046
    .local v7, "trackId":I
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1047
    const/4 v6, 0x1

    .line 1048
    .local v6, "durationUnknown":Z
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 1049
    .local v14, "durationPosition":I
    if-nez v3, :cond_1

    move v1, v5

    .line 1050
    .local v1, "durationByteCount":I
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v1, :cond_3

    .line 1051
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v9

    add-int v10, v14, v8

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 1052
    const/4 v6, 0x0

    .line 1053
    move v15, v6

    goto :goto_2

    .line 1050
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move v15, v6

    .line 1057
    .end local v6    # "durationUnknown":Z
    .end local v8    # "i":I
    .local v15, "durationUnknown":Z
    :goto_2
    if-eqz v15, :cond_4

    .line 1058
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1059
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .local v8, "duration":J
    goto :goto_4

    .line 1061
    .end local v8    # "duration":J
    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    .line 1062
    .restart local v8    # "duration":J
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_6

    .line 1065
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 1069
    :cond_6
    :goto_4
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1070
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 1071
    .local v10, "alternateGroup":I
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1072
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 1073
    .local v6, "a00":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 1074
    .local v11, "a01":I
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1075
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 1076
    .local v5, "a10":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 1083
    .local v12, "a11":I
    const/high16 v13, 0x10000

    .line 1084
    .local v13, "fixedOne":I
    if-nez v6, :cond_8

    if-ne v11, v13, :cond_8

    neg-int v4, v13

    if-eq v5, v4, :cond_7

    if-ne v5, v13, :cond_8

    :cond_7
    if-nez v12, :cond_8

    .line 1085
    const/16 v4, 0x5a

    .local v4, "rotationDegrees":I
    goto :goto_5

    .line 1086
    .end local v4    # "rotationDegrees":I
    :cond_8
    if-nez v6, :cond_a

    neg-int v4, v13

    if-ne v11, v4, :cond_a

    if-eq v5, v13, :cond_9

    neg-int v4, v13

    if-ne v5, v4, :cond_a

    :cond_9
    if-nez v12, :cond_a

    .line 1087
    const/16 v4, 0x10e

    .restart local v4    # "rotationDegrees":I
    goto :goto_5

    .line 1088
    .end local v4    # "rotationDegrees":I
    :cond_a
    neg-int v4, v13

    if-eq v6, v4, :cond_b

    if-ne v6, v13, :cond_c

    :cond_b
    if-nez v11, :cond_c

    if-nez v5, :cond_c

    neg-int v4, v13

    if-ne v12, v4, :cond_c

    .line 1089
    const/16 v4, 0xb4

    .restart local v4    # "rotationDegrees":I
    goto :goto_5

    .line 1092
    .end local v4    # "rotationDegrees":I
    :cond_c
    const/4 v4, 0x0

    .line 1095
    .restart local v4    # "rotationDegrees":I
    :goto_5
    move/from16 v17, v1

    const/16 v1, 0x10

    .end local v1    # "durationByteCount":I
    .local v17, "durationByteCount":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1097
    move v1, v12

    .end local v12    # "a11":I
    .local v1, "a11":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v12

    .line 1098
    .local v12, "width":I
    move/from16 v16, v1

    .end local v1    # "a11":I
    .local v16, "a11":I
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1099
    move v1, v13

    .end local v13    # "fixedOne":I
    .local v1, "fixedOne":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v13

    .line 1101
    .local v13, "height":I
    move/from16 v18, v6

    .end local v6    # "a00":I
    .local v18, "a00":I
    new-instance v6, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;

    move/from16 v19, v4

    move v4, v1

    move v1, v11

    move/from16 v11, v19

    .local v1, "a01":I
    .local v4, "fixedOne":I
    .local v11, "rotationDegrees":I
    invoke-direct/range {v6 .. v13}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;-><init>(IJIIII)V

    return-object v6
.end method

.method public static parseTrak(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/container/Mp4Box$LeafBox;JLandroidx/media3/common/DrmInitData;ZZ)Landroidx/media3/extractor/mp4/Track;
    .locals 28
    .param p0, "trak"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .param p1, "mvhd"    # Landroidx/media3/container/Mp4Box$LeafBox;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 355
    move-object/from16 v0, p0

    const v1, 0x6d646961

    invoke-virtual {v0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 357
    .local v1, "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    nop

    .line 358
    const v2, 0x68646c72    # 4.3148E24f

    invoke-virtual {v1, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->getTrackTypeForHdlr(I)I

    move-result v5

    .line 359
    .local v5, "trackType":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v5, v2, :cond_0

    .line 360
    return-object v3

    .line 363
    :cond_0
    const v2, 0x746b6864

    invoke-virtual {v0, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseTkhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$TkhdData;

    move-result-object v2

    .line 364
    .local v2, "tkhdData":Landroidx/media3/extractor/mp4/BoxParser$TkhdData;
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 365
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$000(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)J

    move-result-wide v8

    move-wide v10, v8

    .end local p2    # "duration":J
    .local v8, "duration":J
    goto :goto_0

    .line 364
    .end local v8    # "duration":J
    .restart local p2    # "duration":J
    :cond_1
    move-wide/from16 v10, p2

    .line 367
    .end local p2    # "duration":J
    .local v10, "duration":J
    :goto_0
    move-object/from16 v4, p1

    iget-object v8, v4, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v8}, Landroidx/media3/extractor/mp4/BoxParser;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v8

    iget-wide v14, v8, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    .line 369
    .local v14, "movieTimescale":J
    cmp-long v6, v10, v6

    if-nez v6, :cond_2

    .line 370
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v20, v10

    move-wide v10, v6

    .local v6, "durationUs":J
    goto :goto_1

    .line 372
    .end local v6    # "durationUs":J
    :cond_2
    const-wide/32 v12, 0xf4240

    invoke-static/range {v10 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    move-wide/from16 v20, v10

    move-wide v10, v6

    .line 374
    .local v10, "durationUs":J
    .local v20, "duration":J
    :goto_1
    nop

    .line 376
    const v6, 0x6d696e66

    invoke-virtual {v1, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 377
    const v7, 0x7374626c

    invoke-virtual {v6, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v6

    .line 375
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 379
    .local v6, "stbl":Landroidx/media3/container/Mp4Box$ContainerBox;
    const v7, 0x6d646864

    invoke-virtual {v1, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v7, v7, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v7}, Landroidx/media3/extractor/mp4/BoxParser;->parseMdhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$MdhdData;

    move-result-object v22

    .line 380
    .local v22, "mdhdData":Landroidx/media3/extractor/mp4/BoxParser$MdhdData;
    const v7, 0x73747364

    invoke-virtual {v6, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v7

    .line 381
    .local v7, "stsd":Landroidx/media3/container/Mp4Box$LeafBox;
    if-nez v7, :cond_3

    .line 382
    const-string v8, "BoxParsers"

    const-string v9, "Ignoring track where sample table (stbl) box is missing a sample description (stsd)."

    invoke-static {v8, v9}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-object v3

    .line 387
    :cond_3
    iget-object v8, v7, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static/range {v22 .. v22}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->access$100(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, p4

    move/from16 v13, p6

    invoke-static {v8, v2, v9, v12, v13}, Landroidx/media3/extractor/mp4/BoxParser;->parseStsd(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/BoxParser$TkhdData;Ljava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    move-result-object v8

    .line 388
    .local v8, "stsdData":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    const/4 v9, 0x0

    .line 389
    .local v9, "editListDurations":[J
    const/16 v16, 0x0

    .line 390
    .local v16, "editListMediaTimes":[J
    if-nez p5, :cond_6

    .line 391
    move-object/from16 v17, v3

    const v3, 0x65647473

    invoke-virtual {v0, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v3

    .line 392
    .local v3, "edtsAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    if-eqz v3, :cond_5

    .line 393
    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseEdts(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroid/util/Pair;

    move-result-object v0

    .line 394
    .local v0, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    if-eqz v0, :cond_4

    .line 395
    move-object/from16 v23, v1

    .end local v1    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    .local v23, "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, [J

    .line 396
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, [J

    move-object/from16 v18, v9

    move-object/from16 v19, v16

    goto :goto_3

    .line 394
    .end local v23    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    .restart local v1    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    :cond_4
    move-object/from16 v23, v1

    .end local v1    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    .restart local v23    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    goto :goto_2

    .line 392
    .end local v0    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    .end local v23    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    .restart local v1    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    :cond_5
    move-object/from16 v23, v1

    .end local v1    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    .restart local v23    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    goto :goto_2

    .line 390
    .end local v3    # "edtsAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    .end local v23    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    .restart local v1    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    :cond_6
    move-object/from16 v23, v1

    move-object/from16 v17, v3

    .line 400
    .end local v1    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    .restart local v23    # "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    :goto_2
    move-object/from16 v18, v9

    move-object/from16 v19, v16

    .end local v9    # "editListDurations":[J
    .end local v16    # "editListMediaTimes":[J
    .local v18, "editListDurations":[J
    .local v19, "editListMediaTimes":[J
    :goto_3
    iget-object v0, v8, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    if-nez v0, :cond_7

    .line 401
    return-object v17

    .line 404
    :cond_7
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$200(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 405
    new-instance v0, Landroidx/media3/container/Mp4AlternateGroupData;

    .line 406
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$200(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/container/Mp4AlternateGroupData;-><init>(I)V

    .line 407
    .local v0, "alternateGroupEntry":Landroidx/media3/container/Mp4AlternateGroupData;
    iget-object v1, v8, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    .line 410
    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 412
    iget-object v3, v8, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    iget-object v3, v3, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    const/16 p2, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_8

    .line 413
    iget-object v3, v8, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    iget-object v3, v3, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    new-array v9, v9, [Landroidx/media3/common/Metadata$Entry;

    aput-object v0, v9, p2

    invoke-virtual {v3, v9}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v3

    goto :goto_4

    .line 414
    :cond_8
    new-instance v3, Landroidx/media3/common/Metadata;

    new-array v9, v9, [Landroidx/media3/common/Metadata$Entry;

    aput-object v0, v9, p2

    invoke-direct {v3, v9}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 411
    :goto_4
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 415
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 416
    .local v0, "format":Landroidx/media3/common/Format;
    goto :goto_5

    .line 417
    .end local v0    # "format":Landroidx/media3/common/Format;
    :cond_9
    iget-object v0, v8, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    .line 419
    .restart local v0    # "format":Landroidx/media3/common/Format;
    :goto_5
    new-instance v3, Landroidx/media3/extractor/mp4/Track;

    .line 420
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$300(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v4

    .line 422
    move-object v1, v6

    move-object v9, v7

    .end local v6    # "stbl":Landroidx/media3/container/Mp4Box$ContainerBox;
    .end local v7    # "stsd":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v1, "stbl":Landroidx/media3/container/Mp4Box$ContainerBox;
    .local v9, "stsd":Landroidx/media3/container/Mp4Box$LeafBox;
    invoke-static/range {v22 .. v22}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->access$400(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)J

    move-result-wide v6

    .line 425
    invoke-static/range {v22 .. v22}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->access$500(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)J

    move-result-wide v12

    move-wide/from16 v16, v14

    .end local v14    # "movieTimescale":J
    .local v16, "movieTimescale":J
    iget v15, v8, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->requiredSampleTransformation:I

    iget-object v14, v8, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object/from16 p2, v0

    .end local v0    # "format":Landroidx/media3/common/Format;
    .local p2, "format":Landroidx/media3/common/Format;
    iget v0, v8, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    move-object/from16 v24, v8

    move-object/from16 v25, v14

    move-object/from16 v14, p2

    move-wide/from16 v26, v16

    move/from16 v17, v0

    move-object v0, v9

    move-object/from16 v16, v25

    move-wide/from16 v8, v26

    .end local v9    # "stsd":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v16    # "movieTimescale":J
    .end local p2    # "format":Landroidx/media3/common/Format;
    .local v0, "stsd":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v8, "movieTimescale":J
    .local v14, "format":Landroidx/media3/common/Format;
    .local v24, "stsdData":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    invoke-direct/range {v3 .. v19}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 419
    move-object v4, v14

    move-wide v14, v8

    .end local v8    # "movieTimescale":J
    .local v4, "format":Landroidx/media3/common/Format;
    .local v14, "movieTimescale":J
    return-object v3
.end method

.method public static parseTraks(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;Z)Ljava/util/List;
    .locals 10
    .param p0, "moov"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .param p1, "gaplessInfoHolder"    # Landroidx/media3/extractor/GaplessInfoHolder;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .param p8, "omitTrackSampleTable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            "Landroidx/media3/extractor/GaplessInfoHolder;",
            "J",
            "Landroidx/media3/common/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Landroidx/media3/extractor/mp4/Track;",
            "Landroidx/media3/extractor/mp4/Track;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 167
    .local p7, "modifyTrackFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/Track;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 169
    iget-object v2, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 170
    .local v3, "atom":Landroidx/media3/container/Mp4Box$ContainerBox;
    iget v2, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    const v4, 0x7472616b

    if-eq v2, v4, :cond_0

    .line 171
    move-object/from16 v4, p7

    move/from16 v6, p8

    goto :goto_1

    .line 174
    :cond_0
    nop

    .line 178
    const v2, 0x6d766864

    invoke-virtual {p0, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 176
    move-wide v5, p2

    move-object v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v3 .. v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseTrak(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/container/Mp4Box$LeafBox;JLandroidx/media3/common/DrmInitData;ZZ)Landroidx/media3/extractor/mp4/Track;

    move-result-object v2

    .line 175
    move-object/from16 v4, p7

    invoke-interface {v4, v2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Track;

    .line 183
    .local v2, "track":Landroidx/media3/extractor/mp4/Track;
    if-nez v2, :cond_1

    .line 184
    move/from16 v6, p8

    goto :goto_1

    .line 186
    :cond_1
    nop

    .line 189
    const v5, 0x6d646961

    invoke-virtual {v3, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 190
    const v6, 0x6d696e66

    invoke-virtual {v5, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v5

    .line 188
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 191
    const v6, 0x7374626c

    invoke-virtual {v5, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v5

    .line 187
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 192
    .local v5, "stblAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    nop

    .line 193
    move/from16 v6, p8

    invoke-static {v2, v5, p1, v6}, Landroidx/media3/extractor/mp4/BoxParser;->parseStbl(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;Z)Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-result-object v7

    .line 194
    .local v7, "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v2    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v3    # "atom":Landroidx/media3/container/Mp4Box$ContainerBox;
    .end local v5    # "stblAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    .end local v7    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v4, p7

    move/from16 v6, p8

    .line 196
    .end local v1    # "i":I
    return-object v0
.end method

.method public static parseUdta(Landroidx/media3/container/Mp4Box$LeafBox;)Landroidx/media3/common/Metadata;
    .locals 7
    .param p0, "udtaBox"    # Landroidx/media3/container/Mp4Box$LeafBox;

    .line 206
    iget-object v0, p0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 207
    .local v0, "udtaData":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 208
    new-instance v2, Landroidx/media3/common/Metadata;

    const/4 v3, 0x0

    new-array v3, v3, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v2, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 209
    .local v2, "metadata":Landroidx/media3/common/Metadata;
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v1, :cond_3

    .line 210
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 211
    .local v3, "atomPosition":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 212
    .local v4, "atomSize":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 213
    .local v5, "atomType":I
    const v6, 0x6d657461

    if-ne v5, v6, :cond_0

    .line 214
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 215
    add-int v6, v3, v4

    .line 216
    invoke-static {v0, v6}, Landroidx/media3/extractor/mp4/BoxParser;->parseUdtaMeta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v2

    goto :goto_1

    .line 217
    :cond_0
    const v6, 0x736d7461

    if-ne v5, v6, :cond_1

    .line 218
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 219
    add-int v6, v3, v4

    .line 221
    invoke-static {v0, v6}, Landroidx/media3/extractor/mp4/SmtaAtomUtil;->parseSmta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v6

    .line 220
    invoke-virtual {v2, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v2

    goto :goto_1

    .line 222
    :cond_1
    const v6, -0x56878686

    if-ne v5, v6, :cond_2

    .line 223
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseXyz(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v2

    .line 225
    :cond_2
    :goto_1
    add-int v6, v3, v4

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 226
    .end local v3    # "atomPosition":I
    .end local v4    # "atomSize":I
    .end local v5    # "atomType":I
    goto :goto_0

    .line 227
    :cond_3
    return-object v2
.end method

.method private static parseUdtaMeta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .locals 4
    .param p0, "meta"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 983
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 984
    invoke-static {p0}, Landroidx/media3/extractor/mp4/BoxParser;->maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 985
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 986
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 987
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 988
    .local v1, "atomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 989
    .local v2, "atomType":I
    const v3, 0x696c7374

    if-ne v2, v3, :cond_0

    .line 990
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 991
    add-int v3, v0, v1

    invoke-static {p0, v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseIlst(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v3

    return-object v3

    .line 993
    :cond_0
    add-int v3, v0, v1

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 994
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_0

    .line 995
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static parseVideoExtendedUsageBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$VexuData;
    .locals 5
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2543
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2544
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 2545
    .local v0, "childPosition":I
    const/4 v1, 0x0

    .line 2546
    .local v1, "eyesData":Landroidx/media3/extractor/mp4/BoxParser$EyesData;
    :goto_0
    sub-int v2, v0, p1

    if-ge v2, p2, :cond_2

    .line 2547
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2548
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2549
    .local v2, "childAtomSize":I
    if-lez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v4, "childAtomSize must be positive"

    invoke-static {v3, v4}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2550
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 2551
    .local v3, "childAtomType":I
    const v4, 0x65796573

    if-ne v3, v4, :cond_1

    .line 2552
    invoke-static {p0, v0, v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseStereoViewBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v1

    .line 2554
    :cond_1
    add-int/2addr v0, v2

    .line 2555
    .end local v2    # "childAtomSize":I
    .end local v3    # "childAtomType":I
    goto :goto_0

    .line 2556
    :cond_2
    if-nez v1, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    new-instance v2, Landroidx/media3/extractor/mp4/BoxParser$VexuData;

    invoke-direct {v2, v1}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;-><init>(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)V

    :goto_2
    return-object v2
.end method

.method private static parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V
    .locals 45
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "rotationDegrees"    # I
    .param p7, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p8, "out"    # Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .param p9, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1418
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1420
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1421
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1422
    .local v5, "width":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 1423
    .local v6, "height":I
    const/4 v7, 0x0

    .line 1424
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1426
    .local v8, "pixelWidthHeightRatio":F
    const/16 v9, 0x8

    .line 1427
    .local v9, "bitdepthLuma":I
    const/16 v10, 0x8

    .line 1428
    .local v10, "bitdepthChroma":I
    const/16 v11, 0x32

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1430
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v11

    .line 1431
    .local v11, "childPosition":I
    const v12, 0x656e6376

    move/from16 v14, p1

    if-ne v14, v12, :cond_2

    .line 1433
    nop

    .line 1434
    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v12

    .line 1435
    .local v12, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v12, :cond_1

    .line 1436
    iget-object v15, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1438
    .end local p1    # "atomType":I
    .local v14, "atomType":I
    if-nez v3, :cond_0

    .line 1439
    const/4 v15, 0x0

    goto :goto_0

    .line 1440
    :cond_0
    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v15, v15, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v15}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v15

    :goto_0
    nop

    .line 1441
    .end local p7    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v15, "drmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v3, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v13, v3, p9

    goto :goto_1

    .line 1435
    .end local v14    # "atomType":I
    .end local v15    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local p1    # "atomType":I
    .restart local p7    # "drmInitData":Landroidx/media3/common/DrmInitData;
    :cond_1
    move-object v15, v3

    .line 1443
    .end local p1    # "atomType":I
    .end local p7    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v14    # "atomType":I
    .restart local v15    # "drmInitData":Landroidx/media3/common/DrmInitData;
    :goto_1
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 1431
    .end local v12    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    .end local v14    # "atomType":I
    .end local v15    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local p1    # "atomType":I
    .restart local p7    # "drmInitData":Landroidx/media3/common/DrmInitData;
    :cond_2
    move-object v15, v3

    .line 1450
    .end local p1    # "atomType":I
    .end local p7    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v14    # "atomType":I
    .restart local v15    # "drmInitData":Landroidx/media3/common/DrmInitData;
    :goto_2
    const/4 v3, 0x0

    .line 1451
    .local v3, "mimeType":Ljava/lang/String;
    const v12, 0x6d317620

    if-ne v14, v12, :cond_3

    .line 1452
    const-string/jumbo v3, "video/mpeg"

    goto :goto_3

    .line 1453
    :cond_3
    const v12, 0x48323633

    if-ne v14, v12, :cond_4

    .line 1454
    const-string/jumbo v3, "video/3gpp"

    .line 1457
    :cond_4
    :goto_3
    const/4 v12, 0x0

    .line 1458
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v13, 0x0

    .line 1459
    .local v13, "codecs":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1460
    .local v17, "projectionData":[B
    const/16 v18, -0x1

    .line 1461
    .local v18, "stereoMode":I
    const/16 v19, 0x0

    .line 1462
    .local v19, "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    const/16 v20, 0x0

    .line 1463
    .local v20, "btrtData":Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    const/16 v21, -0x1

    .line 1464
    .local v21, "maxNumReorderSamples":I
    const/16 v22, -0x1

    .line 1465
    .local v22, "maxSubLayers":I
    const/16 v23, 0x0

    .line 1466
    .local v23, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    const/16 v24, -0x1

    .line 1467
    .local v24, "decodedWidth":I
    const/16 v25, -0x1

    .line 1470
    .local v25, "decodedHeight":I
    const/16 v26, -0x1

    .line 1471
    .local v26, "colorSpace":I
    const/16 v27, -0x1

    .line 1472
    .local v27, "colorRange":I
    const/16 v28, -0x1

    .line 1474
    .local v28, "colorTransfer":I
    const/16 v29, 0x0

    .line 1475
    .local v29, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    const/16 v30, 0x0

    move/from16 p1, v25

    move/from16 v25, v24

    move/from16 v24, p1

    move/from16 p1, v7

    move-object/from16 p7, v13

    move/from16 v7, v18

    move/from16 v18, v22

    move/from16 v1, v27

    move/from16 v13, v28

    move-object/from16 v22, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v23

    move/from16 v23, v8

    move/from16 v8, v26

    move/from16 v26, v6

    move-object/from16 v6, v30

    .line 1477
    .end local v27    # "colorRange":I
    .end local v28    # "colorTransfer":I
    .local v1, "colorRange":I
    .local v6, "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .local v7, "stereoMode":I
    .local v8, "colorSpace":I
    .local v13, "colorTransfer":I
    .local v15, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v17, "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v18, "maxSubLayers":I
    .local v22, "projectionData":[B
    .local v23, "pixelWidthHeightRatio":F
    .local v24, "decodedHeight":I
    .local v25, "decodedWidth":I
    .local v26, "height":I
    .local p1, "pixelWidthHeightRatioFromPasp":Z
    .local p7, "codecs":Ljava/lang/String;
    :goto_4
    move/from16 v27, v5

    .end local v5    # "width":I
    .local v27, "width":I
    sub-int v5, v11, p2

    if-ge v5, v2, :cond_3e

    .line 1478
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1479
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 1480
    .local v5, "childStartPosition":I
    move/from16 v28, v11

    .end local v11    # "childPosition":I
    .local v28, "childPosition":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 1481
    .local v11, "childAtomSize":I
    if-nez v11, :cond_5

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v30

    move-object/from16 v31, v6

    .end local v6    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .local v31, "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    sub-int v6, v30, p2

    if-ne v6, v2, :cond_6

    .line 1483
    move/from16 v40, v1

    move-object/from16 v36, v3

    move/from16 v42, v7

    move/from16 v39, v9

    move/from16 v38, v10

    move-object/from16 v41, v12

    move/from16 v33, v14

    move-object/from16 v37, v15

    const/4 v14, 0x0

    goto/16 :goto_23

    .line 1481
    .end local v31    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .restart local v6    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    :cond_5
    move-object/from16 v31, v6

    .line 1485
    .end local v6    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .restart local v31    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    :cond_6
    if-lez v11, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    const/16 v32, 0x1

    const-string v2, "childAtomSize must be positive"

    invoke-static {v6, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1486
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1487
    .local v2, "childAtomType":I
    const v6, 0x61766343

    if-ne v2, v6, :cond_a

    .line 1488
    if-nez v3, :cond_8

    move/from16 v6, v32

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    move/from16 v33, v14

    const/4 v14, 0x0

    .end local v14    # "atomType":I
    .local v33, "atomType":I
    invoke-static {v6, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1489
    const-string/jumbo v3, "video/avc"

    .line 1490
    add-int/lit8 v6, v5, 0x8

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1491
    invoke-static {v0}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v6

    .line 1492
    .local v6, "avcConfig":Landroidx/media3/extractor/AvcConfig;
    iget-object v12, v6, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 1493
    iget v14, v6, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v14, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    .line 1494
    if-nez p1, :cond_9

    .line 1495
    iget v14, v6, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    move/from16 v23, v14

    .line 1497
    :cond_9
    iget-object v14, v6, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 1498
    .end local p7    # "codecs":Ljava/lang/String;
    .local v14, "codecs":Ljava/lang/String;
    move-object/from16 v30, v3

    .end local v3    # "mimeType":Ljava/lang/String;
    .local v30, "mimeType":Ljava/lang/String;
    iget v3, v6, Landroidx/media3/extractor/AvcConfig;->maxNumReorderFrames:I

    .line 1499
    .end local v21    # "maxNumReorderSamples":I
    .local v3, "maxNumReorderSamples":I
    iget v8, v6, Landroidx/media3/extractor/AvcConfig;->colorSpace:I

    .line 1500
    iget v1, v6, Landroidx/media3/extractor/AvcConfig;->colorRange:I

    .line 1501
    iget v13, v6, Landroidx/media3/extractor/AvcConfig;->colorTransfer:I

    .line 1502
    iget v9, v6, Landroidx/media3/extractor/AvcConfig;->bitdepthLuma:I

    .line 1503
    iget v6, v6, Landroidx/media3/extractor/AvcConfig;->bitdepthChroma:I

    .line 1504
    .end local v10    # "bitdepthChroma":I
    .local v6, "bitdepthChroma":I
    move/from16 v21, v3

    move v10, v6

    move-object v6, v14

    move-object/from16 v36, v30

    const/4 v14, 0x0

    move/from16 v3, p1

    goto/16 :goto_22

    .end local v6    # "bitdepthChroma":I
    .end local v30    # "mimeType":Ljava/lang/String;
    .end local v33    # "atomType":I
    .local v3, "mimeType":Ljava/lang/String;
    .restart local v10    # "bitdepthChroma":I
    .local v14, "atomType":I
    .restart local v21    # "maxNumReorderSamples":I
    .restart local p7    # "codecs":Ljava/lang/String;
    :cond_a
    move/from16 v33, v14

    .end local v14    # "atomType":I
    .restart local v33    # "atomType":I
    const v6, 0x68766343

    if-ne v2, v6, :cond_e

    .line 1505
    if-nez v3, :cond_b

    move/from16 v6, v32

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    const/4 v14, 0x0

    invoke-static {v6, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1506
    const-string/jumbo v3, "video/hevc"

    .line 1507
    add-int/lit8 v6, v5, 0x8

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1508
    invoke-static {v0}, Landroidx/media3/extractor/HevcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v6

    .line 1509
    .local v6, "hevcConfig":Landroidx/media3/extractor/HevcConfig;
    iget-object v12, v6, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 1510
    iget v14, v6, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput v14, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    .line 1511
    if-nez p1, :cond_c

    .line 1512
    iget v14, v6, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    move/from16 v23, v14

    .line 1514
    :cond_c
    iget v14, v6, Landroidx/media3/extractor/HevcConfig;->maxNumReorderPics:I

    .line 1515
    .end local v21    # "maxNumReorderSamples":I
    .local v14, "maxNumReorderSamples":I
    move-object/from16 v30, v3

    .end local v3    # "mimeType":Ljava/lang/String;
    .restart local v30    # "mimeType":Ljava/lang/String;
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->maxSubLayers:I

    .line 1516
    .end local v18    # "maxSubLayers":I
    .local v3, "maxSubLayers":I
    move/from16 v18, v3

    .end local v3    # "maxSubLayers":I
    .restart local v18    # "maxSubLayers":I
    iget-object v3, v6, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 1517
    .end local p7    # "codecs":Ljava/lang/String;
    .local v3, "codecs":Ljava/lang/String;
    move-object/from16 v21, v3

    .end local v3    # "codecs":Ljava/lang/String;
    .local v21, "codecs":Ljava/lang/String;
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->stereoMode:I

    move-object/from16 v32, v12

    const/4 v12, -0x1

    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v32, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eq v3, v12, :cond_d

    .line 1519
    iget v7, v6, Landroidx/media3/extractor/HevcConfig;->stereoMode:I

    .line 1521
    :cond_d
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->decodedWidth:I

    .line 1522
    .end local v25    # "decodedWidth":I
    .local v3, "decodedWidth":I
    iget v12, v6, Landroidx/media3/extractor/HevcConfig;->decodedHeight:I

    .line 1523
    .end local v24    # "decodedHeight":I
    .local v12, "decodedHeight":I
    iget v8, v6, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    .line 1524
    iget v1, v6, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    .line 1525
    iget v13, v6, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    .line 1526
    iget v9, v6, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    .line 1527
    iget v10, v6, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    .line 1528
    iget-object v6, v6, Landroidx/media3/extractor/HevcConfig;->vpsData:Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1529
    .end local v15    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v6, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    move/from16 v25, v3

    move-object v15, v6

    move/from16 v24, v12

    move-object/from16 v6, v21

    move-object/from16 v36, v30

    move-object/from16 v12, v32

    move/from16 v3, p1

    move/from16 v21, v14

    const/4 v14, 0x0

    goto/16 :goto_22

    .end local v6    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v14    # "maxNumReorderSamples":I
    .end local v30    # "mimeType":Ljava/lang/String;
    .end local v32    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v3, "mimeType":Ljava/lang/String;
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v15    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v21, "maxNumReorderSamples":I
    .restart local v24    # "decodedHeight":I
    .restart local v25    # "decodedWidth":I
    .restart local p7    # "codecs":Ljava/lang/String;
    :cond_e
    const v6, 0x6c687643

    if-ne v2, v6, :cond_1a

    .line 1531
    nop

    .line 1532
    const-string/jumbo v6, "video/hevc"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1531
    const-string v14, "lhvC must follow hvcC atom"

    invoke-static {v6, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1533
    if-eqz v15, :cond_f

    iget-object v6, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    .line 1534
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    const/4 v14, 0x2

    if-lt v6, v14, :cond_f

    move/from16 v6, v32

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    .line 1533
    :goto_8
    const-string/jumbo v14, "must have at least two layers"

    invoke-static {v6, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1536
    add-int/lit8 v6, v5, 0x8

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1537
    invoke-static {v15}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    invoke-static {v0, v6}, Landroidx/media3/extractor/HevcConfig;->parseLayered(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v6

    .line 1538
    .local v6, "lhevcConfig":Landroidx/media3/extractor/HevcConfig;
    iget v14, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    move-object/from16 v36, v3

    .end local v3    # "mimeType":Ljava/lang/String;
    .local v36, "mimeType":Ljava/lang/String;
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    if-ne v14, v3, :cond_10

    move/from16 v3, v32

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    const-string/jumbo v14, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v3, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1544
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    const/4 v14, -0x1

    if-eq v3, v14, :cond_12

    .line 1545
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    if-ne v8, v3, :cond_11

    move/from16 v3, v32

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    :goto_a
    const-string v14, "colorSpace must be the same for both views"

    invoke-static {v3, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1548
    :cond_12
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    const/4 v14, -0x1

    if-eq v3, v14, :cond_14

    .line 1549
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    if-ne v1, v3, :cond_13

    move/from16 v3, v32

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_b
    const-string v14, "colorRange must be the same for both views"

    invoke-static {v3, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1552
    :cond_14
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    const/4 v14, -0x1

    if-eq v3, v14, :cond_16

    .line 1553
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    if-ne v13, v3, :cond_15

    move/from16 v3, v32

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    :goto_c
    const-string v14, "colorTransfer must be the same for both views"

    invoke-static {v3, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1557
    :cond_16
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    if-ne v9, v3, :cond_17

    move/from16 v3, v32

    goto :goto_d

    :cond_17
    const/4 v3, 0x0

    :goto_d
    const-string v14, "bitdepthLuma must be the same for both views"

    invoke-static {v3, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1560
    iget v3, v6, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    if-ne v10, v3, :cond_18

    move/from16 v3, v32

    goto :goto_e

    :cond_18
    const/4 v3, 0x0

    :goto_e
    const-string v14, "bitdepthChroma must be the same for both views"

    invoke-static {v3, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1564
    const-string/jumbo v3, "video/mv-hevc"

    .line 1565
    .end local v36    # "mimeType":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    if-eqz v12, :cond_19

    .line 1567
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v14

    .line 1568
    invoke-virtual {v14, v12}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v14

    move-object/from16 v32, v3

    .end local v3    # "mimeType":Ljava/lang/String;
    .local v32, "mimeType":Ljava/lang/String;
    iget-object v3, v6, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 1569
    invoke-virtual {v14, v3}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 1570
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    goto :goto_f

    .line 1572
    .end local v32    # "mimeType":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    :cond_19
    move-object/from16 v32, v3

    .end local v3    # "mimeType":Ljava/lang/String;
    .restart local v32    # "mimeType":Ljava/lang/String;
    const-string v3, "initializationData must be already set from hvcC atom"

    const/4 v14, 0x0

    invoke-static {v14, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1575
    :goto_f
    iget-object v3, v6, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 1576
    .end local v6    # "lhevcConfig":Landroidx/media3/extractor/HevcConfig;
    .end local p7    # "codecs":Ljava/lang/String;
    .local v3, "codecs":Ljava/lang/String;
    move-object v6, v3

    move-object/from16 v36, v32

    const/4 v14, 0x0

    move/from16 v3, p1

    goto/16 :goto_22

    .end local v32    # "mimeType":Ljava/lang/String;
    .local v3, "mimeType":Ljava/lang/String;
    .restart local p7    # "codecs":Ljava/lang/String;
    :cond_1a
    move-object/from16 v36, v3

    .end local v3    # "mimeType":Ljava/lang/String;
    .restart local v36    # "mimeType":Ljava/lang/String;
    const v3, 0x76766343

    if-ne v2, v3, :cond_1c

    .line 1577
    if-nez v36, :cond_1b

    move/from16 v6, v32

    goto :goto_10

    :cond_1b
    const/4 v6, 0x0

    :goto_10
    const/4 v14, 0x0

    invoke-static {v6, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1578
    const-string/jumbo v3, "video/vvc"

    .line 1579
    .end local v36    # "mimeType":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x8

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1580
    invoke-static {v0}, Landroidx/media3/extractor/VvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/VvcConfig;

    move-result-object v6

    .line 1581
    .local v6, "vvcConfig":Landroidx/media3/extractor/VvcConfig;
    iget-object v12, v6, Landroidx/media3/extractor/VvcConfig;->initializationData:Ljava/util/List;

    .line 1582
    iget v14, v6, Landroidx/media3/extractor/VvcConfig;->nalUnitLengthFieldLength:I

    iput v14, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    .line 1583
    iget-object v14, v6, Landroidx/media3/extractor/VvcConfig;->codecs:Ljava/lang/String;

    .line 1584
    .end local p7    # "codecs":Ljava/lang/String;
    .local v14, "codecs":Ljava/lang/String;
    iget v9, v6, Landroidx/media3/extractor/VvcConfig;->bitdepthLuma:I

    .line 1585
    iget v10, v6, Landroidx/media3/extractor/VvcConfig;->bitdepthLuma:I

    .line 1589
    const/16 v6, 0x10

    .line 1590
    .end local v21    # "maxNumReorderSamples":I
    .local v6, "maxNumReorderSamples":I
    move-object/from16 v36, v3

    move/from16 v21, v6

    move-object v6, v14

    const/4 v14, 0x0

    move/from16 v3, p1

    goto/16 :goto_22

    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v6    # "maxNumReorderSamples":I
    .end local v14    # "codecs":Ljava/lang/String;
    .restart local v21    # "maxNumReorderSamples":I
    .restart local v36    # "mimeType":Ljava/lang/String;
    .restart local p7    # "codecs":Ljava/lang/String;
    :cond_1c
    const v3, 0x76657875

    if-ne v2, v3, :cond_20

    .line 1591
    invoke-static {v0, v5, v11}, Landroidx/media3/extractor/mp4/BoxParser;->parseVideoExtendedUsageBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$VexuData;

    move-result-object v3

    .line 1592
    .local v3, "vexuData":Landroidx/media3/extractor/mp4/BoxParser$VexuData;
    if-eqz v3, :cond_1f

    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->access$1000(Landroidx/media3/extractor/mp4/BoxParser$VexuData;)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v6

    if-eqz v6, :cond_1f

    .line 1593
    if-eqz v15, :cond_1d

    iget-object v6, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    const/4 v14, 0x2

    if-lt v6, v14, :cond_1d

    .line 1595
    nop

    .line 1596
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->hasBothEyeViews()Z

    move-result v6

    .line 1595
    const-string v14, "both eye views must be marked as available"

    invoke-static {v6, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1601
    nop

    .line 1602
    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->access$1000(Landroidx/media3/extractor/mp4/BoxParser$VexuData;)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->access$1100(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)Landroidx/media3/extractor/mp4/BoxParser$StriData;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/mp4/BoxParser$StriData;->access$1200(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 1601
    const-string v14, "for MV-HEVC, eye_views_reversed must be set to false"

    invoke-static {v6, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    goto :goto_12

    .line 1604
    :cond_1d
    const/4 v14, -0x1

    if-ne v7, v14, :cond_1f

    .line 1606
    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->access$1000(Landroidx/media3/extractor/mp4/BoxParser$VexuData;)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->access$1100(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)Landroidx/media3/extractor/mp4/BoxParser$StriData;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/mp4/BoxParser$StriData;->access$1200(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1607
    const/4 v6, 0x5

    goto :goto_11

    .line 1608
    :cond_1e
    const/4 v6, 0x4

    :goto_11
    move v7, v6

    .line 1611
    .end local v3    # "vexuData":Landroidx/media3/extractor/mp4/BoxParser$VexuData;
    :cond_1f
    :goto_12
    move/from16 v3, p1

    move-object/from16 v6, p7

    const/4 v14, 0x0

    goto/16 :goto_22

    :cond_20
    const v3, 0x64766343

    if-eq v2, v3, :cond_3d

    const v3, 0x64767643

    if-eq v2, v3, :cond_3d

    const v3, 0x64767743

    if-ne v2, v3, :cond_21

    move/from16 v40, v1

    move/from16 v42, v7

    move/from16 v39, v9

    move/from16 v38, v10

    move-object/from16 v41, v12

    move-object/from16 v37, v15

    const/4 v14, 0x0

    goto/16 :goto_21

    .line 1615
    :cond_21
    const v3, 0x76706343

    if-ne v2, v3, :cond_27

    .line 1616
    if-nez v36, :cond_22

    move/from16 v3, v32

    goto :goto_13

    :cond_22
    const/4 v3, 0x0

    :goto_13
    const/4 v14, 0x0

    invoke-static {v3, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1617
    const v3, 0x76703038

    const-string/jumbo v6, "video/x-vnd.on2.vp9"

    move/from16 v14, v33

    .end local v33    # "atomType":I
    .local v14, "atomType":I
    if-ne v14, v3, :cond_23

    const-string/jumbo v3, "video/x-vnd.on2.vp8"

    goto :goto_14

    :cond_23
    move-object v3, v6

    .line 1618
    .end local v36    # "mimeType":Ljava/lang/String;
    .local v3, "mimeType":Ljava/lang/String;
    :goto_14
    move/from16 v33, v14

    .end local v14    # "atomType":I
    .restart local v33    # "atomType":I
    add-int/lit8 v14, v5, 0xc

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1620
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    int-to-byte v14, v14

    .line 1621
    .local v14, "profile":B
    move-object/from16 v37, v15

    .end local v15    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v37, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    int-to-byte v15, v15

    .line 1622
    .local v15, "level":B
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v34

    .line 1623
    .local v34, "byte3":I
    shr-int/lit8 v9, v34, 0x4

    .line 1624
    move v10, v9

    .line 1625
    shr-int/lit8 v36, v34, 0x1

    move/from16 v38, v10

    .end local v10    # "bitdepthChroma":I
    .local v38, "bitdepthChroma":I
    and-int/lit8 v10, v36, 0x7

    int-to-byte v10, v10

    .line 1626
    .local v10, "chromaSubsampling":B
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1628
    int-to-byte v6, v9

    .line 1629
    invoke-static {v14, v15, v6, v10}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildVp9CodecPrivateInitializationData(BBBB)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    .line 1632
    :cond_24
    and-int/lit8 v6, v34, 0x1

    if-eqz v6, :cond_25

    move/from16 v6, v32

    goto :goto_15

    :cond_25
    const/4 v6, 0x0

    .line 1633
    .local v6, "fullRangeFlag":Z
    :goto_15
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v30

    .line 1634
    .local v30, "colorPrimaries":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v36

    .line 1635
    .local v36, "transferCharacteristics":I
    invoke-static/range {v30 .. v30}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v8

    .line 1636
    if-eqz v6, :cond_26

    goto :goto_16

    :cond_26
    const/16 v32, 0x2

    .line 1637
    .end local v1    # "colorRange":I
    .local v32, "colorRange":I
    :goto_16
    nop

    .line 1638
    invoke-static/range {v36 .. v36}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v1

    .line 1639
    .end local v6    # "fullRangeFlag":Z
    .end local v10    # "chromaSubsampling":B
    .end local v13    # "colorTransfer":I
    .end local v14    # "profile":B
    .end local v15    # "level":B
    .end local v30    # "colorPrimaries":I
    .end local v34    # "byte3":I
    .end local v36    # "transferCharacteristics":I
    .local v1, "colorTransfer":I
    move-object/from16 v6, p7

    move v13, v1

    move-object/from16 v36, v3

    move/from16 v1, v32

    move-object/from16 v15, v37

    move/from16 v10, v38

    const/4 v14, 0x0

    move/from16 v3, p1

    goto/16 :goto_22

    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v32    # "colorRange":I
    .end local v37    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v38    # "bitdepthChroma":I
    .local v1, "colorRange":I
    .local v10, "bitdepthChroma":I
    .restart local v13    # "colorTransfer":I
    .local v15, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v36, "mimeType":Ljava/lang/String;
    :cond_27
    move-object/from16 v37, v15

    .end local v15    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .restart local v37    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    const v3, 0x61763143

    if-ne v2, v3, :cond_28

    .line 1640
    const-string/jumbo v3, "video/av01"

    .line 1642
    .end local v36    # "mimeType":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v6, v11, -0x8

    .line 1643
    .local v6, "childAtomBodySize":I
    new-array v14, v6, [B

    .line 1644
    .local v14, "initializationDataChunk":[B
    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15, v6}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1645
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    .line 1647
    add-int/lit8 v15, v5, 0x8

    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1648
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseAv1c(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;

    move-result-object v15

    .line 1650
    .local v15, "colorInfo":Landroidx/media3/common/ColorInfo;
    iget v9, v15, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    .line 1651
    iget v10, v15, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    .line 1652
    iget v8, v15, Landroidx/media3/common/ColorInfo;->colorSpace:I

    .line 1653
    iget v1, v15, Landroidx/media3/common/ColorInfo;->colorRange:I

    .line 1654
    iget v6, v15, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 1655
    .end local v13    # "colorTransfer":I
    .end local v14    # "initializationDataChunk":[B
    .end local v15    # "colorInfo":Landroidx/media3/common/ColorInfo;
    .local v6, "colorTransfer":I
    move-object/from16 v36, v3

    move v13, v6

    move-object/from16 v15, v37

    const/4 v14, 0x0

    move/from16 v3, p1

    move-object/from16 v6, p7

    goto/16 :goto_22

    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v6    # "colorTransfer":I
    .restart local v13    # "colorTransfer":I
    .restart local v36    # "mimeType":Ljava/lang/String;
    :cond_28
    const v3, 0x636c6c69

    if-ne v2, v3, :cond_2a

    .line 1656
    if-nez v29, :cond_29

    .line 1657
    invoke-static {}, Landroidx/media3/extractor/mp4/BoxParser;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v29

    move-object/from16 v3, v29

    goto :goto_17

    .line 1656
    :cond_29
    move-object/from16 v3, v29

    .line 1661
    .end local v29    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .local v3, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :goto_17
    const/16 v6, 0x15

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1662
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1663
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v6, p7

    move-object/from16 v29, v3

    move-object/from16 v15, v37

    const/4 v14, 0x0

    move/from16 v3, p1

    goto/16 :goto_22

    .line 1664
    .end local v3    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v29    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_2a
    const v3, 0x6d646376

    if-ne v2, v3, :cond_2c

    .line 1665
    if-nez v29, :cond_2b

    .line 1666
    invoke-static {}, Landroidx/media3/extractor/mp4/BoxParser;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v29

    move-object/from16 v3, v29

    goto :goto_18

    .line 1665
    :cond_2b
    move-object/from16 v3, v29

    .line 1670
    .end local v29    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v3    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :goto_18
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v6

    .line 1671
    .local v6, "displayPrimariesGX":S
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v14

    .line 1672
    .local v14, "displayPrimariesGY":S
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v15

    .line 1673
    .local v15, "displayPrimariesBX":S
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v4

    .line 1674
    .local v4, "displayPrimariesBY":S
    move/from16 v38, v10

    .end local v10    # "bitdepthChroma":I
    .restart local v38    # "bitdepthChroma":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v10

    .line 1675
    .local v10, "displayPrimariesRX":S
    move/from16 v39, v9

    .end local v9    # "bitdepthLuma":I
    .local v39, "bitdepthLuma":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v9

    .line 1676
    .local v9, "displayPrimariesRY":S
    move/from16 v40, v1

    .end local v1    # "colorRange":I
    .local v40, "colorRange":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v1

    .line 1677
    .local v1, "whitePointX":S
    move-object/from16 v41, v12

    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v41, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v12

    .line 1678
    .local v12, "whitePointY":S
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v29

    .line 1679
    .local v29, "maxDisplayMasteringLuminance":J
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v34

    .line 1681
    .local v34, "minDisplayMasteringLuminance":J
    move/from16 v42, v7

    move/from16 v7, v32

    .end local v7    # "stereoMode":I
    .local v42, "stereoMode":I
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1682
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1683
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1684
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1685
    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1686
    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1687
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1688
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1689
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1690
    const-wide/16 v43, 0x2710

    move/from16 v32, v6

    .end local v6    # "displayPrimariesGX":S
    .local v32, "displayPrimariesGX":S
    div-long v6, v29, v43

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1691
    div-long v6, v34, v43

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1692
    .end local v1    # "whitePointX":S
    .end local v4    # "displayPrimariesBY":S
    .end local v9    # "displayPrimariesRY":S
    .end local v10    # "displayPrimariesRX":S
    .end local v12    # "whitePointY":S
    .end local v14    # "displayPrimariesGY":S
    .end local v15    # "displayPrimariesBX":S
    .end local v29    # "maxDisplayMasteringLuminance":J
    .end local v32    # "displayPrimariesGX":S
    .end local v34    # "minDisplayMasteringLuminance":J
    move-object/from16 v6, p7

    move-object/from16 v29, v3

    move-object/from16 v15, v37

    move/from16 v10, v38

    move/from16 v9, v39

    move/from16 v1, v40

    move-object/from16 v12, v41

    move/from16 v7, v42

    const/4 v14, 0x0

    move/from16 v3, p1

    goto/16 :goto_22

    .end local v3    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .end local v38    # "bitdepthChroma":I
    .end local v39    # "bitdepthLuma":I
    .end local v40    # "colorRange":I
    .end local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v42    # "stereoMode":I
    .local v1, "colorRange":I
    .restart local v7    # "stereoMode":I
    .local v9, "bitdepthLuma":I
    .local v10, "bitdepthChroma":I
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v29, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_2c
    move/from16 v40, v1

    move/from16 v42, v7

    move/from16 v39, v9

    move/from16 v38, v10

    move-object/from16 v41, v12

    move/from16 v7, v32

    .end local v1    # "colorRange":I
    .end local v7    # "stereoMode":I
    .end local v9    # "bitdepthLuma":I
    .end local v10    # "bitdepthChroma":I
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v38    # "bitdepthChroma":I
    .restart local v39    # "bitdepthLuma":I
    .restart local v40    # "colorRange":I
    .restart local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v42    # "stereoMode":I
    const v1, 0x64323633

    if-ne v2, v1, :cond_2e

    .line 1693
    if-nez v36, :cond_2d

    move v6, v7

    goto :goto_19

    :cond_2d
    const/4 v6, 0x0

    :goto_19
    const/4 v14, 0x0

    invoke-static {v6, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1694
    const-string/jumbo v1, "video/3gpp"

    move/from16 v3, p1

    move-object/from16 v6, p7

    move-object/from16 v36, v1

    move-object/from16 v15, v37

    move/from16 v10, v38

    move/from16 v9, v39

    move/from16 v1, v40

    move-object/from16 v12, v41

    move/from16 v7, v42

    const/4 v14, 0x0

    .end local v36    # "mimeType":Ljava/lang/String;
    .local v1, "mimeType":Ljava/lang/String;
    goto/16 :goto_22

    .line 1695
    .end local v1    # "mimeType":Ljava/lang/String;
    .restart local v36    # "mimeType":Ljava/lang/String;
    :cond_2e
    const v1, 0x65736473

    if-ne v2, v1, :cond_31

    .line 1696
    if-nez v36, :cond_2f

    move v6, v7

    goto :goto_1a

    :cond_2f
    const/4 v6, 0x0

    :goto_1a
    const/4 v14, 0x0

    invoke-static {v6, v14}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1697
    invoke-static {v0, v5}, Landroidx/media3/extractor/mp4/BoxParser;->parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v1

    .line 1698
    .end local v19    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .local v1, "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1300(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;

    move-result-object v3

    .line 1699
    .end local v36    # "mimeType":Ljava/lang/String;
    .local v3, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$700(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B

    move-result-object v4

    .line 1700
    .local v4, "initializationDataBytes":[B
    if-eqz v4, :cond_30

    .line 1701
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    .end local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_1b

    .line 1700
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_30
    move-object/from16 v12, v41

    .line 1703
    .end local v4    # "initializationDataBytes":[B
    .end local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_1b
    move-object/from16 v6, p7

    move-object/from16 v19, v1

    move-object/from16 v36, v3

    move-object/from16 v15, v37

    move/from16 v10, v38

    move/from16 v9, v39

    move/from16 v1, v40

    move/from16 v7, v42

    move/from16 v3, p1

    goto/16 :goto_22

    .end local v1    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v19    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .restart local v36    # "mimeType":Ljava/lang/String;
    .restart local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_31
    const/4 v14, 0x0

    const v1, 0x62747274

    if-ne v2, v1, :cond_32

    .line 1704
    invoke-static {v0, v5}, Landroidx/media3/extractor/mp4/BoxParser;->parseBtrtFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    move-result-object v1

    move/from16 v3, p1

    move-object/from16 v6, p7

    move-object/from16 v20, v1

    move-object/from16 v15, v37

    move/from16 v10, v38

    move/from16 v9, v39

    move/from16 v1, v40

    move-object/from16 v12, v41

    move/from16 v7, v42

    .end local v20    # "btrtData":Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    .local v1, "btrtData":Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    goto/16 :goto_22

    .line 1705
    .end local v1    # "btrtData":Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    .restart local v20    # "btrtData":Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    :cond_32
    const v1, 0x70617370

    if-ne v2, v1, :cond_33

    .line 1706
    invoke-static {v0, v5}, Landroidx/media3/extractor/mp4/BoxParser;->parsePaspFromParent(Landroidx/media3/common/util/ParsableByteArray;I)F

    move-result v1

    .line 1707
    .end local v23    # "pixelWidthHeightRatio":F
    .local v1, "pixelWidthHeightRatio":F
    const/4 v3, 0x1

    move-object/from16 v6, p7

    move/from16 v23, v1

    move-object/from16 v15, v37

    move/from16 v10, v38

    move/from16 v9, v39

    move/from16 v1, v40

    move-object/from16 v12, v41

    move/from16 v7, v42

    .end local p1    # "pixelWidthHeightRatioFromPasp":Z
    .local v3, "pixelWidthHeightRatioFromPasp":Z
    goto/16 :goto_22

    .line 1708
    .end local v1    # "pixelWidthHeightRatio":F
    .end local v3    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v23    # "pixelWidthHeightRatio":F
    .restart local p1    # "pixelWidthHeightRatioFromPasp":Z
    :cond_33
    const v1, 0x73763364

    if-ne v2, v1, :cond_34

    .line 1709
    invoke-static {v0, v5, v11}, Landroidx/media3/extractor/mp4/BoxParser;->parseProjFromParent(Landroidx/media3/common/util/ParsableByteArray;II)[B

    move-result-object v1

    move/from16 v3, p1

    move-object/from16 v6, p7

    move-object/from16 v22, v1

    move-object/from16 v15, v37

    move/from16 v10, v38

    move/from16 v9, v39

    move/from16 v1, v40

    move-object/from16 v12, v41

    move/from16 v7, v42

    .end local v22    # "projectionData":[B
    .local v1, "projectionData":[B
    goto/16 :goto_22

    .line 1710
    .end local v1    # "projectionData":[B
    .restart local v22    # "projectionData":[B
    :cond_34
    const v1, 0x73743364

    if-ne v2, v1, :cond_36

    .line 1711
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1712
    .local v1, "version":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1713
    if-nez v1, :cond_35

    .line 1714
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 1715
    .local v3, "layout":I
    packed-switch v3, :pswitch_data_0

    goto :goto_1c

    .line 1726
    :pswitch_0
    const/4 v7, 0x3

    .line 1727
    .end local v42    # "stereoMode":I
    .restart local v7    # "stereoMode":I
    goto :goto_1d

    .line 1723
    .end local v7    # "stereoMode":I
    .restart local v42    # "stereoMode":I
    :pswitch_1
    const/4 v7, 0x2

    .line 1724
    .end local v42    # "stereoMode":I
    .restart local v7    # "stereoMode":I
    goto :goto_1d

    .line 1720
    .end local v7    # "stereoMode":I
    .restart local v42    # "stereoMode":I
    :pswitch_2
    const/4 v7, 0x1

    .line 1721
    .end local v42    # "stereoMode":I
    .restart local v7    # "stereoMode":I
    goto :goto_1d

    .line 1717
    .end local v7    # "stereoMode":I
    .restart local v42    # "stereoMode":I
    :pswitch_3
    const/4 v7, 0x0

    .line 1718
    .end local v42    # "stereoMode":I
    .restart local v7    # "stereoMode":I
    goto :goto_1d

    .line 1732
    .end local v1    # "version":I
    .end local v3    # "layout":I
    .end local v7    # "stereoMode":I
    .restart local v42    # "stereoMode":I
    :cond_35
    :goto_1c
    move/from16 v7, v42

    .end local v42    # "stereoMode":I
    .restart local v7    # "stereoMode":I
    :goto_1d
    move/from16 v3, p1

    move-object/from16 v6, p7

    move-object/from16 v15, v37

    move/from16 v10, v38

    move/from16 v9, v39

    move/from16 v1, v40

    move-object/from16 v12, v41

    goto/16 :goto_22

    .end local v7    # "stereoMode":I
    .restart local v42    # "stereoMode":I
    :cond_36
    const v1, 0x61707643

    if-ne v2, v1, :cond_37

    .line 1733
    const-string/jumbo v1, "video/apv"

    .line 1735
    .end local v36    # "mimeType":Ljava/lang/String;
    .local v1, "mimeType":Ljava/lang/String;
    add-int/lit8 v3, v11, -0xc

    .line 1736
    .local v3, "childAtomBodySize":I
    new-array v4, v3, [B

    .line 1737
    .local v4, "initializationDataChunk":[B
    add-int/lit8 v6, v5, 0xc

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1738
    const/4 v15, 0x0

    invoke-virtual {v0, v4, v15, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1739
    invoke-static {v4}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildApvCodecString([B)Ljava/lang/String;

    move-result-object v6

    .line 1740
    .end local p7    # "codecs":Ljava/lang/String;
    .local v6, "codecs":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 1742
    .end local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v7, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v9, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v9, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseApvc(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;

    move-result-object v9

    .line 1744
    .local v9, "colorInfo":Landroidx/media3/common/ColorInfo;
    iget v10, v9, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    .line 1745
    .end local v39    # "bitdepthLuma":I
    .local v10, "bitdepthLuma":I
    iget v12, v9, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    .line 1746
    .end local v38    # "bitdepthChroma":I
    .local v12, "bitdepthChroma":I
    iget v8, v9, Landroidx/media3/common/ColorInfo;->colorSpace:I

    .line 1747
    iget v15, v9, Landroidx/media3/common/ColorInfo;->colorRange:I

    .line 1748
    .end local v40    # "colorRange":I
    .local v15, "colorRange":I
    iget v3, v9, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 1749
    .end local v4    # "initializationDataChunk":[B
    .end local v9    # "colorInfo":Landroidx/media3/common/ColorInfo;
    .end local v13    # "colorTransfer":I
    .local v3, "colorTransfer":I
    move-object/from16 v36, v1

    move v13, v3

    move v9, v10

    move v10, v12

    move v1, v15

    move-object/from16 v15, v37

    move/from16 v3, p1

    move-object v12, v7

    move/from16 v7, v42

    goto/16 :goto_22

    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v3    # "colorTransfer":I
    .end local v6    # "codecs":Ljava/lang/String;
    .end local v7    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v10    # "bitdepthLuma":I
    .end local v12    # "bitdepthChroma":I
    .end local v15    # "colorRange":I
    .restart local v13    # "colorTransfer":I
    .restart local v36    # "mimeType":Ljava/lang/String;
    .restart local v38    # "bitdepthChroma":I
    .restart local v39    # "bitdepthLuma":I
    .restart local v40    # "colorRange":I
    .restart local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local p7    # "codecs":Ljava/lang/String;
    :cond_37
    const/4 v15, 0x0

    const v1, 0x636f6c72

    if-ne v2, v1, :cond_3c

    .line 1756
    const/4 v12, -0x1

    if-ne v8, v12, :cond_3c

    if-ne v13, v12, :cond_3c

    .line 1757
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1758
    .local v1, "colorType":I
    const v3, 0x6e636c78

    if-eq v1, v3, :cond_39

    const v3, 0x6e636c63

    if-ne v1, v3, :cond_38

    goto :goto_1e

    .line 1776
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported color type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroidx/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoxParsers"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 1761
    :cond_39
    :goto_1e
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 1762
    .local v3, "colorPrimaries":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 1763
    .local v4, "transferCharacteristics":I
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1769
    const/16 v9, 0x13

    if-ne v11, v9, :cond_3a

    .line 1770
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_3a

    move v15, v7

    goto :goto_1f

    :cond_3a
    nop

    .line 1771
    .local v15, "fullRangeFlag":Z
    :goto_1f
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v8

    .line 1772
    if-eqz v15, :cond_3b

    move v6, v7

    .line 1773
    .end local v40    # "colorRange":I
    .local v6, "colorRange":I
    :cond_3b
    nop

    .line 1774
    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v3

    .line 1775
    .end local v4    # "transferCharacteristics":I
    .end local v13    # "colorTransfer":I
    .end local v15    # "fullRangeFlag":Z
    .local v3, "colorTransfer":I
    move v13, v3

    move v1, v6

    move-object/from16 v15, v37

    move/from16 v10, v38

    move/from16 v9, v39

    move-object/from16 v12, v41

    move/from16 v7, v42

    move/from16 v3, p1

    move-object/from16 v6, p7

    goto :goto_22

    .line 1780
    .end local v1    # "colorType":I
    .end local v3    # "colorTransfer":I
    .end local v6    # "colorRange":I
    .restart local v13    # "colorTransfer":I
    .restart local v40    # "colorRange":I
    :cond_3c
    :goto_20
    move/from16 v3, p1

    move-object/from16 v6, p7

    move-object/from16 v15, v37

    move/from16 v10, v38

    move/from16 v9, v39

    move/from16 v1, v40

    move-object/from16 v12, v41

    move/from16 v7, v42

    goto :goto_22

    .line 1611
    .end local v37    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v38    # "bitdepthChroma":I
    .end local v39    # "bitdepthLuma":I
    .end local v40    # "colorRange":I
    .end local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v42    # "stereoMode":I
    .local v1, "colorRange":I
    .local v7, "stereoMode":I
    .local v9, "bitdepthLuma":I
    .local v10, "bitdepthChroma":I
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v15, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    :cond_3d
    move/from16 v40, v1

    move/from16 v42, v7

    move/from16 v39, v9

    move/from16 v38, v10

    move-object/from16 v41, v12

    move-object/from16 v37, v15

    const/4 v14, 0x0

    .line 1614
    .end local v1    # "colorRange":I
    .end local v7    # "stereoMode":I
    .end local v9    # "bitdepthLuma":I
    .end local v10    # "bitdepthChroma":I
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v15    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .restart local v37    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .restart local v38    # "bitdepthChroma":I
    .restart local v39    # "bitdepthLuma":I
    .restart local v40    # "colorRange":I
    .restart local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v42    # "stereoMode":I
    :goto_21
    invoke-static {v0}, Landroidx/media3/container/DolbyVisionConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/DolbyVisionConfig;

    move-result-object v1

    move/from16 v3, p1

    move-object/from16 v6, p7

    move-object/from16 v31, v1

    move-object/from16 v15, v37

    move/from16 v10, v38

    move/from16 v9, v39

    move/from16 v1, v40

    move-object/from16 v12, v41

    move/from16 v7, v42

    .line 1780
    .end local v37    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v38    # "bitdepthChroma":I
    .end local v39    # "bitdepthLuma":I
    .end local v40    # "colorRange":I
    .end local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v42    # "stereoMode":I
    .end local p1    # "pixelWidthHeightRatioFromPasp":Z
    .end local p7    # "codecs":Ljava/lang/String;
    .restart local v1    # "colorRange":I
    .local v3, "pixelWidthHeightRatioFromPasp":Z
    .local v6, "codecs":Ljava/lang/String;
    .restart local v7    # "stereoMode":I
    .restart local v9    # "bitdepthLuma":I
    .restart local v10    # "bitdepthChroma":I
    .restart local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v15    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    :goto_22
    add-int v11, v28, v11

    .line 1781
    .end local v2    # "childAtomType":I
    .end local v5    # "childStartPosition":I
    .end local v28    # "childPosition":I
    .local v11, "childPosition":I
    move/from16 v2, p3

    move-object/from16 v4, p8

    move/from16 p1, v3

    move-object/from16 p7, v6

    move/from16 v5, v27

    move-object/from16 v6, v31

    move/from16 v14, v33

    move-object/from16 v3, v36

    goto/16 :goto_4

    .line 1477
    .end local v31    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .end local v33    # "atomType":I
    .end local v36    # "mimeType":Ljava/lang/String;
    .local v3, "mimeType":Ljava/lang/String;
    .local v6, "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .local v14, "atomType":I
    .restart local p1    # "pixelWidthHeightRatioFromPasp":Z
    .restart local p7    # "codecs":Ljava/lang/String;
    :cond_3e
    move/from16 v40, v1

    move-object/from16 v36, v3

    move-object/from16 v31, v6

    move/from16 v42, v7

    move/from16 v39, v9

    move/from16 v38, v10

    move/from16 v28, v11

    move-object/from16 v41, v12

    move/from16 v33, v14

    move-object/from16 v37, v15

    const/4 v14, 0x0

    .line 1783
    .end local v1    # "colorRange":I
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v6    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .end local v7    # "stereoMode":I
    .end local v9    # "bitdepthLuma":I
    .end local v10    # "bitdepthChroma":I
    .end local v11    # "childPosition":I
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v14    # "atomType":I
    .end local v15    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .restart local v28    # "childPosition":I
    .restart local v31    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .restart local v33    # "atomType":I
    .restart local v36    # "mimeType":Ljava/lang/String;
    .restart local v37    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .restart local v38    # "bitdepthChroma":I
    .restart local v39    # "bitdepthLuma":I
    .restart local v40    # "colorRange":I
    .restart local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v42    # "stereoMode":I
    :goto_23
    if-eqz v31, :cond_3f

    .line 1784
    const-string/jumbo v3, "video/dolby-vision"

    .line 1785
    .end local v36    # "mimeType":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v1, v31

    .end local v31    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .local v1, "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    iget-object v2, v1, Landroidx/media3/container/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .end local p7    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    goto :goto_24

    .line 1783
    .end local v1    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .end local v2    # "codecs":Ljava/lang/String;
    .end local v3    # "mimeType":Ljava/lang/String;
    .restart local v31    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .restart local v36    # "mimeType":Ljava/lang/String;
    .restart local p7    # "codecs":Ljava/lang/String;
    :cond_3f
    move-object/from16 v1, v31

    .end local v31    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    .restart local v1    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    move-object/from16 v2, p7

    move-object/from16 v3, v36

    .line 1789
    .end local v36    # "mimeType":Ljava/lang/String;
    .end local p7    # "codecs":Ljava/lang/String;
    .restart local v2    # "codecs":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    :goto_24
    if-nez v3, :cond_40

    .line 1790
    return-void

    .line 1793
    :cond_40
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1795
    move/from16 v5, p4

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1796
    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1797
    invoke-virtual {v4, v2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1798
    move/from16 v6, v27

    .end local v27    # "width":I
    .local v6, "width":I
    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1799
    move/from16 v7, v26

    .end local v26    # "height":I
    .local v7, "height":I
    invoke-virtual {v4, v7}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1800
    move/from16 v9, v25

    .end local v25    # "decodedWidth":I
    .local v9, "decodedWidth":I
    invoke-virtual {v4, v9}, Landroidx/media3/common/Format$Builder;->setDecodedWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1801
    move/from16 v10, v24

    .end local v24    # "decodedHeight":I
    .local v10, "decodedHeight":I
    invoke-virtual {v4, v10}, Landroidx/media3/common/Format$Builder;->setDecodedHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1802
    move/from16 v11, v23

    .end local v23    # "pixelWidthHeightRatio":F
    .local v11, "pixelWidthHeightRatio":F
    invoke-virtual {v4, v11}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1803
    move/from16 v12, p6

    invoke-virtual {v4, v12}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1804
    move-object/from16 v15, v22

    .end local v22    # "projectionData":[B
    .local v15, "projectionData":[B
    invoke-virtual {v4, v15}, Landroidx/media3/common/Format$Builder;->setProjectionData([B)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1805
    move/from16 v14, v42

    .end local v42    # "stereoMode":I
    .local v14, "stereoMode":I
    invoke-virtual {v4, v14}, Landroidx/media3/common/Format$Builder;->setStereoMode(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1806
    move-object/from16 v0, v41

    .end local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v4, v0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1807
    move/from16 v0, v21

    .end local v21    # "maxNumReorderSamples":I
    .local v0, "maxNumReorderSamples":I
    .restart local v41    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v4, v0}, Landroidx/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1808
    move/from16 v0, v18

    .end local v18    # "maxSubLayers":I
    .local v0, "maxSubLayers":I
    .restart local v21    # "maxNumReorderSamples":I
    invoke-virtual {v4, v0}, Landroidx/media3/common/Format$Builder;->setMaxSubLayers(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1809
    move-object/from16 v0, v17

    .end local v17    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v0, "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v18    # "maxSubLayers":I
    invoke-virtual {v4, v0}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1810
    move-object/from16 v0, p5

    .end local v0    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v17    # "drmInitData":Landroidx/media3/common/DrmInitData;
    invoke-virtual {v4, v0}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1815
    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1816
    move-object/from16 v31, v1

    move/from16 v1, v40

    .end local v40    # "colorRange":I
    .local v1, "colorRange":I
    .restart local v31    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1817
    invoke-virtual {v0, v13}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1818
    if-eqz v29, :cond_41

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    move/from16 v40, v1

    move-object/from16 v1, v16

    goto :goto_25

    :cond_41
    move/from16 v40, v1

    const/4 v1, 0x0

    .end local v1    # "colorRange":I
    .restart local v40    # "colorRange":I
    :goto_25
    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1819
    move/from16 v1, v39

    .end local v39    # "bitdepthLuma":I
    .local v1, "bitdepthLuma":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1820
    move/from16 v1, v38

    .end local v38    # "bitdepthChroma":I
    .local v1, "bitdepthChroma":I
    .restart local v39    # "bitdepthLuma":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1821
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v0

    .line 1813
    invoke-virtual {v4, v0}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1824
    .local v0, "formatBuilder":Landroidx/media3/common/Format$Builder;
    if-eqz v20, :cond_42

    .line 1825
    nop

    .line 1826
    invoke-static/range {v20 .. v20}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->access$1500(Landroidx/media3/extractor/mp4/BoxParser$BtrtData;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1827
    invoke-static/range {v20 .. v20}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->access$1400(Landroidx/media3/extractor/mp4/BoxParser$BtrtData;)J

    move-result-wide v22

    move/from16 v38, v1

    .end local v1    # "bitdepthChroma":I
    .restart local v38    # "bitdepthChroma":I
    invoke-static/range {v22 .. v23}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v4, v1}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    goto :goto_26

    .line 1828
    .end local v38    # "bitdepthChroma":I
    .restart local v1    # "bitdepthChroma":I
    :cond_42
    move/from16 v38, v1

    .end local v1    # "bitdepthChroma":I
    .restart local v38    # "bitdepthChroma":I
    if-eqz v19, :cond_43

    .line 1829
    nop

    .line 1830
    invoke-static/range {v19 .. v19}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1700(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1831
    invoke-static/range {v19 .. v19}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1600(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 1834
    :cond_43
    :goto_26
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    move-object/from16 v4, p8

    iput-object v1, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    .line 1835
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseXyz(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata;
    .locals 11
    .param p0, "xyzBox"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1014
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v0

    .line 1015
    .local v0, "length":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1016
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 1018
    .local v1, "location":Ljava/lang/String;
    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1019
    .local v2, "plusSignIndex":I
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1020
    .local v3, "minusSignIndex":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1022
    .local v4, "latitudeEndIndex":I
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1023
    .local v6, "latitude":F
    nop

    .line 1024
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 1025
    .local v7, "longitude":F
    new-instance v9, Landroidx/media3/common/Metadata;

    new-array v8, v8, [Landroidx/media3/common/Metadata$Entry;

    new-instance v10, Landroidx/media3/container/Mp4LocationData;

    invoke-direct {v10, v6, v7}, Landroidx/media3/container/Mp4LocationData;-><init>(FF)V

    aput-object v10, v8, v5

    invoke-direct {v9, v8}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 1026
    .end local v6    # "latitude":F
    .end local v7    # "longitude":F
    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    .line 1028
    .local v5, "exception":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v6, 0x0

    return-object v6
.end method

.method private static vobsubYuvToRgb(I)I
    .locals 10
    .param p0, "yuv"    # I

    .line 1391
    shr-int/lit8 v0, p0, 0x10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 1392
    .local v0, "y":I
    shr-int/lit8 v2, p0, 0x8

    and-int/2addr v2, v1

    .line 1393
    .local v2, "v":I
    and-int/lit16 v3, p0, 0xff

    .line 1395
    .local v3, "u":I
    add-int/lit8 v4, v2, -0x80

    mul-int/lit16 v4, v4, 0x36fb

    div-int/lit16 v4, v4, 0x2710

    add-int/2addr v4, v0

    .line 1396
    .local v4, "r":I
    add-int/lit8 v5, v3, -0x80

    mul-int/lit16 v5, v5, 0xd7f

    div-int/lit16 v5, v5, 0x2710

    sub-int v5, v0, v5

    add-int/lit8 v6, v2, -0x80

    mul-int/lit16 v6, v6, 0x1c01

    div-int/lit16 v6, v6, 0x2710

    sub-int/2addr v5, v6

    .line 1397
    .local v5, "g":I
    add-int/lit8 v6, v3, -0x80

    mul-int/lit16 v6, v6, 0x457e

    div-int/lit16 v6, v6, 0x2710

    add-int/2addr v6, v0

    .line 1399
    .local v6, "b":I
    const/4 v7, 0x0

    invoke-static {v4, v7, v1}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v8

    shl-int/lit8 v8, v8, 0x10

    .line 1400
    invoke-static {v5, v7, v1}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    .line 1401
    invoke-static {v6, v7, v1}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v1

    or-int/2addr v1, v8

    .line 1399
    return v1
.end method
