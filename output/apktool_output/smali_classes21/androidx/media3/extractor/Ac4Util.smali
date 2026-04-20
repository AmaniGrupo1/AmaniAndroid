.class public final Landroidx/media3/extractor/Ac4Util;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/Ac4Util$Ac4Presentation;,
        Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final AC40_SYNCWORD:I = 0xac40

.field public static final AC41_SYNCWORD:I = 0xac41

.field private static final CHANNEL_COUNT_2:I = 0x2

.field private static final CHANNEL_MODE_22_2:I = 0xf

.field private static final CHANNEL_MODE_3_0:I = 0x2

.field private static final CHANNEL_MODE_5_0:I = 0x3

.field private static final CHANNEL_MODE_5_1:I = 0x4

.field private static final CHANNEL_MODE_7_0_322:I = 0x9

.field private static final CHANNEL_MODE_7_0_34:I = 0x5

.field private static final CHANNEL_MODE_7_0_4:I = 0xb

.field private static final CHANNEL_MODE_7_0_52:I = 0x7

.field private static final CHANNEL_MODE_7_1_322:I = 0xa

.field private static final CHANNEL_MODE_7_1_34:I = 0x6

.field private static final CHANNEL_MODE_7_1_4:I = 0xc

.field private static final CHANNEL_MODE_7_1_52:I = 0x8

.field private static final CHANNEL_MODE_9_0_4:I = 0xd

.field private static final CHANNEL_MODE_9_1_4:I = 0xe

.field private static final CHANNEL_MODE_MONO:I = 0x0

.field private static final CHANNEL_MODE_STEREO:I = 0x1

.field private static final CHANNEL_MODE_UNKNOWN:I = -0x1

.field public static final HEADER_SIZE_FOR_PARSER:I = 0x10

.field public static final MAX_RATE_BYTES_PER_SECOND:I = 0x52080

.field private static final SAMPLE_COUNT:[I

.field public static final SAMPLE_HEADER_SIZE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "Ac4Util"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCodecsString(III)Ljava/lang/String;
    .locals 3
    .param p0, "bitstreamVersion"    # I
    .param p1, "presentationVersion"    # I
    .param p2, "mdcompat"    # I

    .line 686
    nop

    .line 687
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 686
    const-string v1, "ac-4.%02d.%02d.%02d"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 3
    .param p0, "size"    # I
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 795
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 796
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 797
    .local v0, "data":[B
    const/4 v1, 0x0

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    .line 798
    const/4 v1, 0x1

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    .line 799
    const/4 v1, 0x2

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 800
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 801
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 802
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 803
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 804
    return-void
.end method

.method private static getAdjustedChannelCount(IZI)I
    .locals 2
    .param p0, "channelMode"    # I
    .param p1, "hasBackChannels"    # Z
    .param p2, "topChannelPairs"    # I

    .line 617
    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->getChannelCountFromChannelMode(I)I

    move-result v0

    .line 618
    .local v0, "channelCount":I
    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-ne p0, v1, :cond_2

    .line 623
    :cond_0
    if-nez p1, :cond_1

    .line 624
    add-int/lit8 v0, v0, -0x2

    .line 627
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 632
    :pswitch_0
    add-int/lit8 v0, v0, -0x2

    .line 633
    goto :goto_0

    .line 629
    :pswitch_1
    add-int/lit8 v0, v0, -0x4

    .line 630
    nop

    .line 638
    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getChannelCountFromChannelMode(I)I
    .locals 1
    .param p0, "channelMode"    # I

    .line 642
    packed-switch p0, :pswitch_data_0

    .line 672
    const/4 v0, -0x1

    return v0

    .line 670
    :pswitch_0
    const/16 v0, 0x18

    return v0

    .line 668
    :pswitch_1
    const/16 v0, 0xe

    return v0

    .line 666
    :pswitch_2
    const/16 v0, 0xd

    return v0

    .line 664
    :pswitch_3
    const/16 v0, 0xc

    return v0

    .line 662
    :pswitch_4
    const/16 v0, 0xb

    return v0

    .line 660
    :pswitch_5
    const/16 v0, 0x8

    return v0

    .line 656
    :pswitch_6
    const/4 v0, 0x7

    return v0

    .line 652
    :pswitch_7
    const/4 v0, 0x6

    return v0

    .line 650
    :pswitch_8
    const/4 v0, 0x5

    return v0

    .line 648
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 646
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 644
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc4AnnexEFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 21
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 182
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 183
    .local v0, "dataBitArray":Landroidx/media3/common/util/ParsableBitArray;
    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 185
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    .line 186
    .local v2, "dsiSize":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 187
    .local v4, "ac4DsiVersion":I
    const/4 v5, 0x1

    if-gt v4, v5, :cond_30

    .line 192
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 193
    .local v7, "bitstreamVersion":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0xbb80

    goto :goto_0

    :cond_0
    const v8, 0xac44

    .line 194
    .local v8, "sampleRate":I
    :goto_0
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 195
    const/16 v10, 0x9

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 197
    .local v10, "numberOfPresentations":I
    const/16 v11, 0x10

    if-le v7, v5, :cond_2

    .line 198
    if-eqz v4, :cond_1

    .line 202
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 203
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 204
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 205
    const/16 v12, 0x80

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 199
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid AC-4 DSI version: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 210
    :cond_2
    :goto_1
    if-ne v4, v5, :cond_4

    .line 211
    invoke-static {v0}, Landroidx/media3/extractor/Ac4Util;->skipDsiBitrate(Landroidx/media3/common/util/ParsableBitArray;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 214
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    goto :goto_2

    .line 212
    :cond_3
    const-string v3, "Invalid AC-4 DSI bitrate."

    invoke-static {v3}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 217
    :cond_4
    :goto_2
    new-instance v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;-><init>(Landroidx/media3/extractor/Ac4Util$1;)V

    .line 218
    .local v12, "ac4Presentation":Landroidx/media3/extractor/Ac4Util$Ac4Presentation;
    const/4 v13, 0x0

    .local v13, "presentationIdx":I
    :goto_3
    if-ge v13, v10, :cond_2a

    .line 219
    const/4 v14, 0x0

    .line 220
    .local v14, "isSingleSubstream":Z
    const/4 v15, 0x0

    .line 223
    .local v15, "isSingleSubstreamGroup":Z
    const/16 v16, 0x0

    .line 224
    .local v16, "presentationBytes":I
    const/16 v17, 0x0

    .line 226
    .local v17, "start":I
    const/4 v9, 0x5

    const/16 v6, 0x8

    const/4 v5, 0x2

    if-nez v4, :cond_5

    .line 227
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    .line 228
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 229
    .local v19, "presentationConfig":I
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v20

    move/from16 v9, v16

    move/from16 v11, v19

    move/from16 v3, v20

    move/from16 v16, v6

    .local v20, "presentationVersion":I
    goto :goto_5

    .line 231
    .end local v19    # "presentationConfig":I
    .end local v20    # "presentationVersion":I
    :cond_5
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 232
    .local v3, "presentationVersion":I
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 233
    .end local v16    # "presentationBytes":I
    .local v9, "presentationBytes":I
    move/from16 v16, v6

    const/16 v6, 0xff

    if-ne v9, v6, :cond_6

    .line 234
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v9, v6

    .line 236
    :cond_6
    if-le v3, v5, :cond_7

    .line 237
    mul-int/lit8 v5, v9, 0x8

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 238
    nop

    .line 218
    .end local v3    # "presentationVersion":I
    .end local v9    # "presentationBytes":I
    .end local v14    # "isSingleSubstream":Z
    .end local v15    # "isSingleSubstreamGroup":Z
    .end local v17    # "start":I
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v9, 0x4

    goto :goto_3

    .line 241
    .restart local v3    # "presentationVersion":I
    .restart local v9    # "presentationBytes":I
    .restart local v14    # "isSingleSubstream":Z
    .restart local v15    # "isSingleSubstreamGroup":Z
    .restart local v17    # "start":I
    :cond_7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v17, v6, 0x8

    .line 244
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 245
    .local v11, "presentationConfig":I
    const/16 v6, 0x1f

    if-ne v11, v6, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    move v15, v6

    .line 247
    :goto_5
    iput v3, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->version:I

    .line 250
    if-nez v14, :cond_9

    if-nez v15, :cond_9

    const/4 v6, 0x6

    if-ne v11, v6, :cond_9

    .line 251
    const/4 v5, 0x1

    .local v5, "addEmdfSubstreams":Z
    goto/16 :goto_f

    .line 253
    .end local v5    # "addEmdfSubstreams":Z
    :cond_9
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    iput v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    .line 255
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 256
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 259
    :cond_a
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 260
    const/4 v6, 0x1

    if-ne v4, v6, :cond_c

    if-eq v3, v6, :cond_b

    if-ne v3, v5, :cond_c

    .line 261
    :cond_b
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 263
    :cond_c
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 264
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 266
    const/4 v6, 0x1

    if-ne v4, v6, :cond_14

    .line 267
    if-lez v3, :cond_d

    .line 268
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    .line 271
    :cond_d
    iget-boolean v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v5, :cond_11

    .line 272
    const/4 v6, 0x1

    if-eq v3, v6, :cond_e

    const/4 v5, 0x2

    if-ne v3, v5, :cond_10

    .line 273
    :cond_e
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 274
    .local v5, "channelMode":I
    if-ltz v5, :cond_f

    const/16 v6, 0xf

    if-gt v5, v6, :cond_f

    .line 275
    iput v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    .line 278
    :cond_f
    const/16 v6, 0xb

    if-lt v5, v6, :cond_10

    const/16 v6, 0xe

    if-gt v5, v6, :cond_10

    .line 279
    nop

    .line 280
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    iput-boolean v6, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    .line 281
    nop

    .line 282
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    .line 286
    .end local v5    # "channelMode":I
    :cond_10
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 289
    :cond_11
    const/4 v6, 0x1

    if-eq v3, v6, :cond_12

    const/4 v5, 0x2

    if-ne v3, v5, :cond_14

    .line 290
    :cond_12
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 291
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 292
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 295
    :cond_13
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 298
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 299
    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 300
    .local v5, "filterBytes":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v5, :cond_14

    .line 301
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 300
    add-int/lit8 v6, v6, 0x1

    const/16 v1, 0x8

    goto :goto_6

    .line 307
    .end local v5    # "filterBytes":I
    .end local v6    # "i":I
    :cond_14
    if-nez v14, :cond_1e

    if-eqz v15, :cond_15

    goto/16 :goto_d

    .line 315
    :cond_15
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 316
    packed-switch v11, :pswitch_data_0

    .line 355
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 356
    .local v5, "nSkipBytes":I
    const/4 v1, 0x0

    .local v1, "j":I
    goto :goto_c

    .line 343
    .end local v1    # "j":I
    .end local v5    # "nSkipBytes":I
    :pswitch_0
    if-nez v3, :cond_16

    .line 344
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_e

    .line 346
    :cond_16
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 347
    .local v1, "nSubstreamGroupsMinus2":I
    const/4 v5, 0x0

    .line 348
    .local v5, "substreamGroupId":I
    :goto_7
    add-int/lit8 v6, v1, 0x2

    if-ge v5, v6, :cond_17

    .line 350
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 349
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 353
    .end local v1    # "nSubstreamGroupsMinus2":I
    .end local v5    # "substreamGroupId":I
    :cond_17
    goto :goto_e

    .line 332
    :pswitch_1
    if-nez v3, :cond_19

    .line 333
    const/4 v1, 0x0

    .local v1, "substreamId":I
    :goto_8
    const/4 v6, 0x3

    if-ge v1, v6, :cond_18

    .line 334
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v1    # "substreamId":I
    :cond_18
    goto :goto_e

    .line 337
    :cond_19
    const/4 v1, 0x0

    .local v1, "substreamGroupId":I
    :goto_9
    const/4 v6, 0x3

    if-ge v1, v6, :cond_1a

    .line 338
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 341
    .end local v1    # "substreamGroupId":I
    :cond_1a
    goto :goto_e

    .line 320
    :pswitch_2
    if-nez v3, :cond_1c

    .line 321
    const/4 v1, 0x0

    .local v1, "substreamId":I
    :goto_a
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1b

    .line 322
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v1    # "substreamId":I
    :cond_1b
    goto :goto_e

    .line 325
    :cond_1c
    const/4 v1, 0x0

    .local v1, "substreamGroupId":I
    :goto_b
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1d

    .line 326
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 329
    .end local v1    # "substreamGroupId":I
    :cond_1d
    goto :goto_e

    .line 356
    .local v1, "j":I
    .local v5, "nSkipBytes":I
    :goto_c
    if-ge v1, v5, :cond_20

    .line 357
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 308
    .end local v1    # "j":I
    .end local v5    # "nSkipBytes":I
    :cond_1e
    :goto_d
    if-nez v3, :cond_1f

    .line 309
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_e

    .line 311
    :cond_1f
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 362
    :cond_20
    :goto_e
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 363
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 365
    .local v5, "addEmdfSubstreams":Z
    :goto_f
    if-eqz v5, :cond_22

    .line 366
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 367
    .local v1, "nAddEmdfSubstreams":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_10
    if-ge v6, v1, :cond_21

    .line 368
    move/from16 v18, v1

    const/16 v1, 0xf

    .end local v1    # "nAddEmdfSubstreams":I
    .local v18, "nAddEmdfSubstreams":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 367
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v18

    goto :goto_10

    .end local v18    # "nAddEmdfSubstreams":I
    .restart local v1    # "nAddEmdfSubstreams":I
    :cond_21
    move/from16 v18, v1

    .line 372
    .end local v1    # "nAddEmdfSubstreams":I
    .end local v6    # "j":I
    :cond_22
    if-lez v3, :cond_26

    .line 373
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 374
    invoke-static {v0}, Landroidx/media3/extractor/Ac4Util;->skipDsiBitrate(Landroidx/media3/common/util/ParsableBitArray;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_11

    .line 375
    :cond_23
    const-string v1, "Can\'t parse bitrate DSI."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 379
    :cond_24
    :goto_11
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 380
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 381
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 382
    .local v1, "nameLen":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 384
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 385
    .local v6, "nTargets":I
    const/16 v18, 0x0

    move/from16 v20, v1

    move/from16 v1, v18

    .local v1, "i":I
    .local v20, "nameLen":I
    :goto_12
    if-ge v1, v6, :cond_25

    .line 386
    move/from16 v18, v1

    const/4 v1, 0x3

    .end local v1    # "i":I
    .local v18, "i":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 387
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 385
    add-int/lit8 v1, v18, 0x1

    .end local v18    # "i":I
    .restart local v1    # "i":I
    goto :goto_12

    :cond_25
    move/from16 v18, v1

    .line 392
    .end local v1    # "i":I
    .end local v6    # "nTargets":I
    .end local v20    # "nameLen":I
    :cond_26
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 394
    const/4 v6, 0x1

    if-ne v4, v6, :cond_28

    .line 395
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    sub-int v1, v2, v1

    const/16 v16, 0x8

    div-int/lit8 v1, v1, 0x8

    .line 396
    .local v1, "end":I
    sub-int v6, v1, v17

    .line 397
    .local v6, "presentationBytesRead":I
    if-lt v9, v6, :cond_27

    .line 401
    move/from16 v16, v1

    .end local v1    # "end":I
    .local v16, "end":I
    sub-int v1, v9, v6

    .line 402
    .local v1, "skipBytes":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    goto :goto_13

    .line 398
    .end local v16    # "end":I
    .local v1, "end":I
    :cond_27
    move/from16 v16, v1

    .end local v1    # "end":I
    .restart local v16    # "end":I
    const-string/jumbo v1, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 406
    .end local v6    # "presentationBytesRead":I
    .end local v16    # "end":I
    :cond_28
    :goto_13
    iget-boolean v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v1, :cond_2a

    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_29

    goto :goto_14

    .line 407
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t determine channel mode of presentation "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 414
    .end local v3    # "presentationVersion":I
    .end local v5    # "addEmdfSubstreams":Z
    .end local v9    # "presentationBytes":I
    .end local v11    # "presentationConfig":I
    .end local v13    # "presentationIdx":I
    .end local v14    # "isSingleSubstream":Z
    .end local v15    # "isSingleSubstreamGroup":Z
    .end local v17    # "start":I
    :cond_2a
    :goto_14
    iget-boolean v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v1, :cond_2b

    .line 415
    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    iget-boolean v3, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    iget v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    .line 416
    invoke-static {v1, v3, v5}, Landroidx/media3/extractor/Ac4Util;->getAdjustedChannelCount(IZI)I

    move-result v1

    .local v1, "channelCount":I
    goto :goto_17

    .line 421
    .end local v1    # "channelCount":I
    :cond_2b
    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    if-lez v1, :cond_2e

    .line 431
    const/4 v1, 0x1

    .line 432
    .local v1, "lfeChannelCount":I
    iget v3, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    add-int/2addr v3, v1

    .line 437
    .local v3, "channelCount":I
    iget v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2d

    .line 438
    const/16 v5, 0x11

    if-ne v3, v5, :cond_2c

    const/16 v5, 0x15

    goto :goto_15

    :cond_2c
    move v5, v3

    :goto_15
    move v1, v5

    .end local v3    # "channelCount":I
    .local v5, "channelCount":I
    goto :goto_16

    .line 437
    .end local v5    # "channelCount":I
    .restart local v3    # "channelCount":I
    :cond_2d
    move v1, v3

    .line 440
    .end local v3    # "channelCount":I
    .local v1, "channelCount":I
    :goto_16
    goto :goto_17

    .line 446
    .end local v1    # "channelCount":I
    :cond_2e
    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    packed-switch v1, :pswitch_data_1

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AC-4 level "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has not been defined."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Ac4Util"

    invoke-static {v3, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const/4 v1, 0x2

    .restart local v1    # "channelCount":I
    goto :goto_17

    .line 461
    .end local v1    # "channelCount":I
    :pswitch_3
    const/16 v1, 0xc

    .line 462
    .restart local v1    # "channelCount":I
    goto :goto_17

    .line 458
    .end local v1    # "channelCount":I
    :pswitch_4
    const/16 v1, 0xa

    .line 459
    .restart local v1    # "channelCount":I
    goto :goto_17

    .line 455
    .end local v1    # "channelCount":I
    :pswitch_5
    const/16 v1, 0x8

    .line 456
    .restart local v1    # "channelCount":I
    goto :goto_17

    .line 452
    .end local v1    # "channelCount":I
    :pswitch_6
    const/4 v1, 0x6

    .line 453
    .restart local v1    # "channelCount":I
    goto :goto_17

    .line 449
    .end local v1    # "channelCount":I
    :pswitch_7
    const/4 v1, 0x2

    .line 450
    .restart local v1    # "channelCount":I
    nop

    .line 473
    :goto_17
    if-lez v1, :cond_2f

    .line 478
    iget v3, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->version:I

    iget v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    .line 479
    invoke-static {v7, v3, v5}, Landroidx/media3/extractor/Ac4Util;->createCodecsString(III)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "codecString":Ljava/lang/String;
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 482
    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 483
    const-string v9, "audio/ac4"

    invoke-virtual {v5, v9}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 484
    invoke-virtual {v5, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 485
    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 486
    move-object/from16 v9, p3

    invoke-virtual {v5, v9}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 487
    move-object/from16 v11, p2

    invoke-virtual {v5, v11}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 488
    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 489
    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    .line 481
    return-object v5

    .line 474
    .end local v3    # "codecString":Ljava/lang/String;
    :cond_2f
    move-object/from16 v6, p1

    move-object/from16 v11, p2

    move-object/from16 v9, p3

    const-string v3, "Cannot determine channel count of presentation."

    invoke-static {v3}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 188
    .end local v1    # "channelCount":I
    .end local v7    # "bitstreamVersion":I
    .end local v8    # "sampleRate":I
    .end local v10    # "numberOfPresentations":I
    .end local v12    # "ac4Presentation":Landroidx/media3/extractor/Ac4Util$Ac4Presentation;
    :cond_30
    move-object/from16 v6, p1

    move-object/from16 v11, p2

    move-object/from16 v9, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported AC-4 DSI version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 785
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 786
    .local v0, "bufferBytes":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 787
    .local v1, "position":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 788
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 789
    new-instance v2, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v2, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-static {v2}, Landroidx/media3/extractor/Ac4Util;->parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    move-result-object v2

    iget v2, v2, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleCount:I

    return v2
.end method

.method public static parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    .locals 12
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "headerSize":I
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 700
    .local v2, "syncWord":I
    const/4 v3, 0x2

    add-int/2addr v0, v3

    .line 701
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 702
    .local v1, "frameSize":I
    add-int/2addr v0, v3

    .line 703
    const v4, 0xffff

    if-ne v1, v4, :cond_0

    .line 704
    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 705
    add-int/lit8 v0, v0, 0x3

    .line 707
    :cond_0
    add-int/2addr v1, v0

    .line 708
    const v4, 0xac41

    if-ne v2, v4, :cond_1

    .line 709
    add-int/lit8 v1, v1, 0x2

    move v8, v1

    goto :goto_0

    .line 708
    :cond_1
    move v8, v1

    .line 711
    .end local v1    # "frameSize":I
    .local v8, "frameSize":I
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 712
    .local v1, "bitstreamVersion":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 713
    invoke-static {p0, v3}, Landroidx/media3/extractor/Ac4Util;->readVariableBits(Landroidx/media3/common/util/ParsableBitArray;I)I

    move-result v5

    add-int/2addr v1, v5

    move v5, v1

    goto :goto_1

    .line 712
    :cond_2
    move v5, v1

    .line 715
    .end local v1    # "bitstreamVersion":I
    .local v5, "bitstreamVersion":I
    :goto_1
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 716
    .local v1, "sequenceCounter":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 717
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    if-lez v6, :cond_3

    .line 718
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 721
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    const v6, 0xbb80

    const v7, 0xac44

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v7

    .line 722
    .local v3, "sampleRate":I
    :goto_2
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 723
    .local v11, "frameRateIndex":I
    const/4 v9, 0x0

    .line 724
    .local v9, "sampleCount":I
    if-ne v3, v7, :cond_5

    const/16 v7, 0xd

    if-ne v11, v7, :cond_5

    .line 725
    sget-object v4, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    aget v9, v4, v11

    goto :goto_3

    .line 726
    :cond_5
    if-ne v3, v6, :cond_9

    sget-object v6, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    array-length v6, v6

    if-ge v11, v6, :cond_9

    .line 727
    sget-object v6, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    aget v9, v6, v11

    .line 728
    rem-int/lit8 v6, v1, 0x5

    const/16 v7, 0xb

    const/16 v10, 0x8

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 741
    :pswitch_0
    if-eq v11, v4, :cond_6

    if-eq v11, v10, :cond_6

    if-ne v11, v7, :cond_9

    .line 742
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 736
    :pswitch_1
    if-eq v11, v10, :cond_7

    if-ne v11, v7, :cond_9

    .line 737
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 731
    :pswitch_2
    if-eq v11, v4, :cond_8

    if-ne v11, v10, :cond_9

    .line 732
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 749
    :cond_9
    :goto_3
    new-instance v4, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    const/4 v6, 0x2

    const/4 v10, 0x0

    move v7, v3

    .end local v3    # "sampleRate":I
    .local v7, "sampleRate":I
    invoke-direct/range {v4 .. v10}, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;-><init>(IIIIILandroidx/media3/extractor/Ac4Util$1;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc4SyncframeSize([BI)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "syncword"    # I

    .line 760
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 761
    const/4 v0, -0x1

    return v0

    .line 763
    :cond_0
    const/4 v0, 0x2

    .line 764
    .local v0, "headerSize":I
    const/4 v1, 0x2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 765
    .local v2, "frameSize":I
    add-int/2addr v0, v1

    .line 766
    const v1, 0xffff

    if-ne v2, v1, :cond_1

    .line 767
    const/4 v1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v2, v1, v3

    .line 768
    add-int/lit8 v0, v0, 0x3

    .line 770
    :cond_1
    const v1, 0xac41

    if-ne p1, v1, :cond_2

    .line 771
    add-int/lit8 v0, v0, 0x2

    .line 773
    :cond_2
    add-int/2addr v2, v0

    .line 774
    return v2
.end method

.method private static parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V
    .locals 4
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "ac4Presentation"    # Landroidx/media3/extractor/Ac4Util$Ac4Presentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 505
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 506
    .local v1, "channelMode":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 508
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 511
    :cond_0
    const/4 v0, 0x7

    if-lt v1, v0, :cond_1

    const/16 v0, 0xa

    if-gt v1, v0, :cond_1

    .line 512
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 515
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 516
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 520
    .local v0, "contentClassifier":I
    iget v2, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    if-ltz v1, :cond_3

    const/16 v2, 0xf

    if-gt v1, v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 523
    :cond_2
    iput v1, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    .line 526
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 527
    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->skipDsiLanguage(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 530
    .end local v0    # "contentClassifier":I
    :cond_4
    return-void
.end method

.method private static parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V
    .locals 6
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "ac4Presentation"    # Landroidx/media3/extractor/Ac4Util$Ac4Presentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 546
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 547
    .local v1, "channelCoded":Z
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 549
    .local v2, "numberOfSubstreams":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 550
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 551
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 552
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 554
    :cond_0
    if-eqz v1, :cond_1

    .line 555
    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 557
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    .line 558
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_2

    .line 559
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 561
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    .line 563
    :cond_3
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 549
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 567
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 568
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 570
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 571
    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->skipDsiLanguage(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 574
    :cond_5
    return-void
.end method

.method private static readVariableBits(Landroidx/media3/common/util/ParsableBitArray;I)I
    .locals 2
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "bitsPerRead"    # I

    .line 807
    const/4 v0, 0x0

    .line 809
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 810
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 811
    nop

    .line 816
    return v0

    .line 813
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 814
    shl-int/2addr v0, p1

    goto :goto_0
.end method

.method private static skipDsiBitrate(Landroidx/media3/common/util/ParsableBitArray;)Z
    .locals 2
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 607
    const/16 v0, 0x42

    .line 608
    .local v0, "totalBitsToSkip":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 609
    const/4 v1, 0x0

    return v1

    .line 611
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 612
    const/4 v1, 0x1

    return v1
.end method

.method private static skipDsiLanguage(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 3
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 586
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 587
    .local v0, "languageTagBytesNumber":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2a

    if-gt v0, v1, :cond_0

    .line 594
    mul-int/lit8 v1, v0, 0x8

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 595
    return-void

    .line 588
    :cond_0
    nop

    .line 591
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 589
    const-string v2, "Invalid language tag bytes number: %d. Must be between 2 and 42."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method
