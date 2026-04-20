.class final Landroidx/media3/extractor/ts/MpeghUtil;
.super Ljava/lang/Object;
.source "MpeghUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;,
        Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;
    }
.end annotation


# static fields
.field private static final MHAS_SYNC_WORD:I = 0xc001a5


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOutputFrameLength(I)I
    .locals 2
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 105
    packed-switch p0, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported coreSbrFrameLengthIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 114
    :pswitch_0
    const/16 v0, 0x1000

    return v0

    .line 112
    :pswitch_1
    const/16 v0, 0x800

    return v0

    .line 109
    :pswitch_2
    const/16 v0, 0x400

    return v0

    .line 107
    :pswitch_3
    const/16 v0, 0x300

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getResamplingRatio(I)D
    .locals 2
    .param p0, "usacSamplingFrequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 155
    sparse-switch p0, :sswitch_data_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported sampling rate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 160
    :sswitch_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 165
    :sswitch_1
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    return-wide v0

    .line 168
    :sswitch_2
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    return-wide v0

    .line 171
    :sswitch_3
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x396c -> :sswitch_3
        0x3e80 -> :sswitch_3
        0x5622 -> :sswitch_2
        0x5dc0 -> :sswitch_2
        0x72d8 -> :sswitch_1
        0x7d00 -> :sswitch_1
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
        0xe5b0 -> :sswitch_1
        0xfa00 -> :sswitch_1
        0x15888 -> :sswitch_0
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getSamplingFrequency(I)I
    .locals 2
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 249
    packed-switch p0, :pswitch_data_0

    .line 303
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported sampling rate index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 301
    :pswitch_1
    const/16 v0, 0x2580

    return v0

    .line 299
    :pswitch_2
    const/16 v0, 0x3200

    return v0

    .line 297
    :pswitch_3
    const/16 v0, 0x3840

    return v0

    .line 295
    :pswitch_4
    const/16 v0, 0x42b3

    return v0

    .line 293
    :pswitch_5
    const/16 v0, 0x4b00

    return v0

    .line 291
    :pswitch_6
    const/16 v0, 0x4e20

    return v0

    .line 289
    :pswitch_7
    const/16 v0, 0x6400

    return v0

    .line 287
    :pswitch_8
    const/16 v0, 0x7080

    return v0

    .line 285
    :pswitch_9
    const v0, 0x8566

    return v0

    .line 283
    :pswitch_a
    const v0, 0x9600

    return v0

    .line 281
    :pswitch_b
    const v0, 0x9c40

    return v0

    .line 279
    :pswitch_c
    const v0, 0xc800

    return v0

    .line 277
    :pswitch_d
    const v0, 0xe100

    return v0

    .line 275
    :pswitch_e
    const/16 v0, 0x1cb6

    return v0

    .line 273
    :pswitch_f
    const/16 v0, 0x1f40

    return v0

    .line 271
    :pswitch_10
    const/16 v0, 0x2b11

    return v0

    .line 269
    :pswitch_11
    const/16 v0, 0x2ee0

    return v0

    .line 267
    :pswitch_12
    const/16 v0, 0x3e80

    return v0

    .line 265
    :pswitch_13
    const/16 v0, 0x5622

    return v0

    .line 263
    :pswitch_14
    const/16 v0, 0x5dc0

    return v0

    .line 261
    :pswitch_15
    const/16 v0, 0x7d00

    return v0

    .line 259
    :pswitch_16
    const v0, 0xac44

    return v0

    .line 257
    :pswitch_17
    const v0, 0xbb80

    return v0

    .line 255
    :pswitch_18
    const v0, 0xfa00

    return v0

    .line 253
    :pswitch_19
    const v0, 0x15888

    return v0

    .line 251
    :pswitch_1a
    const v0, 0x17700

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getSbrRatioIndex(I)I
    .locals 2
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 130
    packed-switch p0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported coreSbrFrameLengthIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 139
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 137
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 135
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 133
    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSyncWord(I)Z
    .locals 2
    .param p0, "word"    # I

    .line 44
    const v0, 0xffffff

    and-int/2addr v0, p0

    const v1, 0xc001a5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseAudioTruncationInfo(Landroidx/media3/common/util/ParsableBitArray;)I
    .locals 1
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 318
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 320
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    return v0

    .line 322
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static parseMhasPacketHeader(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;)Z
    .locals 7
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "header"    # Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v0

    .line 61
    .local v0, "dataStartPos":I
    const/4 v1, 0x3

    const/16 v2, 0x8

    invoke-static {p0, v1, v2, v2}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v1

    iput v1, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetType:I

    .line 62
    iget v1, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetType:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 63
    return v3

    .line 66
    :cond_0
    const/4 v1, 0x2

    const/16 v5, 0x20

    invoke-static {p0, v1, v2, v5}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedLongValue(Landroidx/media3/common/util/ParsableBitArray;III)J

    move-result-wide v1

    iput-wide v1, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLabel:J

    .line 67
    iget-wide v1, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLabel:J

    const-wide/16 v5, -0x1

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    .line 68
    return v3

    .line 71
    :cond_1
    iget-wide v1, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLabel:J

    const-wide/16 v5, 0x10

    cmp-long v1, v1, v5

    if-gtz v1, :cond_4

    .line 76
    iget-wide v1, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLabel:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_2

    .line 77
    iget v1, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetType:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 82
    :sswitch_0
    const-string v1, "AudioTruncation packet with invalid packet label 0"

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 85
    :sswitch_1
    const-string v1, "Mpegh3daFrame packet with invalid packet label 0"

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 79
    :sswitch_2
    const-string v1, "Mpegh3daConfig packet with invalid packet label 0"

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 92
    :cond_2
    :goto_0
    const/16 v1, 0xb

    const/16 v2, 0x18

    invoke-static {p0, v1, v2, v2}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v1

    iput v1, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLength:I

    .line 93
    iget v1, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLength:I

    if-eq v1, v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    .line 72
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contains sub-stream with an invalid packet label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLabel:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseMpegh3daConfig(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;
    .locals 17
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 189
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 190
    .local v1, "compatibleProfileLevelSet":[B
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 193
    .local v4, "profileLevelIndication":I
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 194
    .local v9, "samplingFrequencyIndex":I
    const/16 v3, 0x1f

    if-ne v9, v3, :cond_0

    .line 195
    const/16 v3, 0x18

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    move v10, v3

    .local v3, "usacSamplingFrequency":I
    goto :goto_0

    .line 197
    .end local v3    # "usacSamplingFrequency":I
    :cond_0
    invoke-static {v9}, Landroidx/media3/extractor/ts/MpeghUtil;->getSamplingFrequency(I)I

    move-result v3

    move v10, v3

    .line 200
    .local v10, "usacSamplingFrequency":I
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 201
    .local v11, "coreSbrFrameLengthIndex":I
    invoke-static {v11}, Landroidx/media3/extractor/ts/MpeghUtil;->getOutputFrameLength(I)I

    move-result v12

    .line 202
    .local v12, "outputFrameLength":I
    invoke-static {v11}, Landroidx/media3/extractor/ts/MpeghUtil;->getSbrRatioIndex(I)I

    move-result v13

    .line 204
    .local v13, "sbrRatioIndex":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 206
    invoke-static {v0}, Landroidx/media3/extractor/ts/MpeghUtil;->skipSpeakerConfig3d(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 207
    invoke-static {v0}, Landroidx/media3/extractor/ts/MpeghUtil;->parseSignals3d(Landroidx/media3/common/util/ParsableBitArray;)I

    move-result v14

    .line 208
    .local v14, "numSignals":I
    invoke-static {v0, v14, v13}, Landroidx/media3/extractor/ts/MpeghUtil;->skipMpegh3daDecoderConfig(Landroidx/media3/common/util/ParsableBitArray;II)V

    .line 210
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 212
    const/4 v5, 0x4

    invoke-static {v0, v3, v5, v2}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 213
    .local v3, "numConfigExtensions":I
    const/4 v6, 0x0

    .local v6, "confExtIdx":I
    :goto_1
    if-ge v6, v3, :cond_3

    .line 214
    const/16 v7, 0x10

    invoke-static {v0, v5, v2, v7}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v8

    .line 215
    .local v8, "usacConfigExtType":I
    invoke-static {v0, v5, v2, v7}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v7

    .line 217
    .local v7, "usacConfigExtLength":I
    const/4 v15, 0x7

    if-ne v8, v15, :cond_2

    .line 218
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    .line 219
    .local v15, "numCompatibleSets":I
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 220
    new-array v1, v15, [B

    .line 221
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "idx":I
    :goto_2
    if-ge v5, v15, :cond_1

    .line 222
    move-object/from16 v16, v1

    .end local v1    # "compatibleProfileLevelSet":[B
    .local v16, "compatibleProfileLevelSet":[B
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v16, v5

    .line 221
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    goto :goto_2

    .end local v16    # "compatibleProfileLevelSet":[B
    .restart local v1    # "compatibleProfileLevelSet":[B
    :cond_1
    move-object/from16 v16, v1

    .line 224
    .end local v1    # "compatibleProfileLevelSet":[B
    .end local v5    # "idx":I
    .end local v15    # "numCompatibleSets":I
    .restart local v16    # "compatibleProfileLevelSet":[B
    goto :goto_3

    .line 225
    .end local v16    # "compatibleProfileLevelSet":[B
    .restart local v1    # "compatibleProfileLevelSet":[B
    :cond_2
    mul-int/lit8 v5, v7, 0x8

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 213
    .end local v7    # "usacConfigExtLength":I
    .end local v8    # "usacConfigExtType":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x4

    goto :goto_1

    :cond_3
    move-object v7, v1

    goto :goto_4

    .line 210
    .end local v3    # "numConfigExtensions":I
    .end local v6    # "confExtIdx":I
    :cond_4
    move-object v7, v1

    .line 232
    .end local v1    # "compatibleProfileLevelSet":[B
    .local v7, "compatibleProfileLevelSet":[B
    :goto_4
    invoke-static {v10}, Landroidx/media3/extractor/ts/MpeghUtil;->getResamplingRatio(I)D

    move-result-wide v1

    .line 233
    .local v1, "resamplingRatio":D
    int-to-double v5, v10

    mul-double/2addr v5, v1

    double-to-int v5, v5

    .line 234
    .local v5, "samplingFrequency":I
    move-wide v15, v1

    .end local v1    # "resamplingRatio":D
    .local v15, "resamplingRatio":D
    int-to-double v0, v12

    mul-double/2addr v0, v15

    double-to-int v6, v0

    .line 236
    .local v6, "standardFrameLength":I
    new-instance v3, Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;-><init>(III[BLandroidx/media3/extractor/ts/MpeghUtil$1;)V

    return-object v3
.end method

.method private static parseMpegh3daCoreConfig(Landroidx/media3/common/util/ParsableBitArray;)Z
    .locals 2
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 512
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 513
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 514
    .local v0, "enhancedNoiseFilling":Z
    if-eqz v0, :cond_0

    .line 517
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 519
    :cond_0
    return v0
.end method

.method private static parseSignals3d(Landroidx/media3/common/util/ParsableBitArray;)I
    .locals 7
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "numberOfSignals":I
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 404
    .local v2, "numberOfSignalGroupsInBitstream":I
    const/4 v3, 0x0

    .local v3, "grp":I
    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v3, v4, :cond_2

    .line 405
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 406
    .local v4, "signalGroupType":I
    const/16 v5, 0x8

    const/16 v6, 0x10

    invoke-static {p0, v1, v5, v6}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v5

    .line 408
    .local v5, "bsNumberOfSignals":I
    add-int/lit8 v6, v5, 0x1

    add-int/2addr v0, v6

    .line 409
    if-eqz v4, :cond_0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 411
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 412
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->skipSpeakerConfig3d(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 404
    .end local v4    # "signalGroupType":I
    .end local v5    # "bsNumberOfSignals":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    .end local v3    # "grp":I
    :cond_2
    return v0
.end method

.method private static readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I
    .locals 7
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "bits1"    # I
    .param p2, "bits2"    # I
    .param p3, "bits3"    # I

    .line 561
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 562
    .local v0, "maxBitCount":I
    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 564
    shl-int v1, v2, p1

    sub-int/2addr v1, v2

    shl-int v3, v2, p2

    sub-int/2addr v3, v2

    .line 565
    invoke-static {v1, v3}, Lcom/google/common/math/IntMath;->checkedAdd(II)I

    move-result v1

    shl-int v3, v2, p3

    invoke-static {v1, v3}, Lcom/google/common/math/IntMath;->checkedAdd(II)I

    move-result v1

    .line 567
    .local v1, "unused":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    const/4 v4, -0x1

    if-ge v3, p1, :cond_1

    .line 568
    return v4

    .line 571
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 572
    .local v3, "value":I
    shl-int v5, v2, p1

    sub-int/2addr v5, v2

    if-ne v3, v5, :cond_4

    .line 573
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    if-ge v5, p2, :cond_2

    .line 574
    return v4

    .line 576
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 577
    .local v5, "valueAdd":I
    add-int/2addr v3, v5

    .line 579
    shl-int v6, v2, p2

    sub-int/2addr v6, v2

    if-ne v5, v6, :cond_4

    .line 580
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    if-ge v2, p3, :cond_3

    .line 581
    return v4

    .line 583
    :cond_3
    invoke-virtual {p0, p3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 584
    .end local v5    # "valueAdd":I
    .local v2, "valueAdd":I
    add-int/2addr v3, v2

    .line 587
    .end local v2    # "valueAdd":I
    :cond_4
    return v3
.end method

.method private static readEscapedLongValue(Landroidx/media3/common/util/ParsableBitArray;III)J
    .locals 18
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "bits1"    # I
    .param p2, "bits2"    # I
    .param p3, "bits3"    # I

    .line 609
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 610
    .local v4, "maxBitCount":I
    const/16 v5, 0x3f

    if-gt v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 612
    const-wide/16 v5, 0x1

    shl-long v7, v5, v1

    sub-long/2addr v7, v5

    shl-long v9, v5, v2

    sub-long/2addr v9, v5

    .line 614
    invoke-static {v7, v8, v9, v10}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide v7

    shl-long v9, v5, v3

    .line 613
    invoke-static {v7, v8, v9, v10}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide v7

    .line 616
    .local v7, "unused":J
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v9

    const-wide/16 v10, -0x1

    if-ge v9, v1, :cond_1

    .line 617
    return-wide v10

    .line 620
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide v12

    .line 621
    .local v12, "value":J
    shl-long v14, v5, v1

    sub-long/2addr v14, v5

    cmp-long v9, v12, v14

    if-nez v9, :cond_4

    .line 622
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v9

    if-ge v9, v2, :cond_2

    .line 623
    return-wide v10

    .line 626
    :cond_2
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide v14

    .line 627
    .local v14, "valueAdd":J
    add-long/2addr v12, v14

    .line 629
    shl-long v16, v5, v2

    sub-long v16, v16, v5

    cmp-long v5, v14, v16

    if-nez v5, :cond_4

    .line 630
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    if-ge v5, v3, :cond_3

    .line 631
    return-wide v10

    .line 634
    :cond_3
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide v5

    .line 635
    .end local v14    # "valueAdd":J
    .local v5, "valueAdd":J
    add-long/2addr v12, v5

    .line 638
    .end local v5    # "valueAdd":J
    :cond_4
    return-wide v12
.end method

.method private static skipMpegh3daDecoderConfig(Landroidx/media3/common/util/ParsableBitArray;II)V
    .locals 13
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "numSignals"    # I
    .param p2, "sbrRatioIndex"    # I

    .line 431
    const/4 v0, 0x4

    const/16 v1, 0x8

    const/16 v2, 0x10

    invoke-static {p0, v0, v1, v2}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 432
    .local v3, "numElements":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 434
    const/4 v4, 0x0

    .local v4, "elemIdx":I
    :goto_0
    if-ge v4, v3, :cond_a

    .line 435
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 437
    .local v6, "usacElementType":I
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 485
    :pswitch_1
    invoke-static {p0, v0, v1, v2}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 486
    invoke-static {p0, v0, v1, v2}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v5

    .line 488
    .local v5, "usacExtElementConfigLength":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 489
    const/4 v7, 0x0

    invoke-static {p0, v1, v2, v7}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 491
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 493
    if-lez v5, :cond_9

    .line 494
    mul-int/lit8 v7, v5, 0x8

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_1

    .line 445
    .end local v5    # "usacExtElementConfigLength":I
    :pswitch_2
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->parseMpegh3daCoreConfig(Landroidx/media3/common/util/ParsableBitArray;)Z

    move-result v7

    .line 446
    .local v7, "enhancedNoiseFilling":Z
    if-eqz v7, :cond_1

    .line 447
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 449
    :cond_1
    const/4 v8, 0x0

    .line 450
    .local v8, "stereoConfigIndex":I
    if-lez p2, :cond_2

    .line 451
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->skipSbrConfig(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 452
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 454
    :cond_2
    if-lez v8, :cond_6

    .line 456
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 457
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 458
    .local v10, "bsTempShapeConfig":I
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 459
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 460
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 462
    :cond_3
    if-eq v8, v5, :cond_4

    const/4 v11, 0x3

    if-ne v8, v11, :cond_5

    .line 463
    :cond_4
    invoke-virtual {p0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 465
    :cond_5
    if-ne v10, v5, :cond_6

    .line 466
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 470
    .end local v10    # "bsTempShapeConfig":I
    :cond_6
    add-int/lit8 v9, p1, -0x1

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    add-int/lit8 v9, v9, 0x1

    .line 471
    .local v9, "nBits":I
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 472
    .local v5, "qceIndex":I
    if-lez v5, :cond_7

    .line 473
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 474
    invoke-virtual {p0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 477
    :cond_7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 478
    invoke-virtual {p0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 480
    :cond_8
    if-nez p2, :cond_9

    if-nez v5, :cond_9

    .line 481
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    goto :goto_1

    .line 439
    .end local v5    # "qceIndex":I
    .end local v7    # "enhancedNoiseFilling":Z
    .end local v8    # "stereoConfigIndex":I
    .end local v9    # "nBits":I
    :pswitch_3
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->parseMpegh3daCoreConfig(Landroidx/media3/common/util/ParsableBitArray;)Z

    .line 440
    if-lez p2, :cond_9

    .line 441
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->skipSbrConfig(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 434
    .end local v6    # "usacElementType":I
    :cond_9
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 501
    .end local v4    # "elemIdx":I
    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static skipMpegh3daFlexibleSpeakerConfig(Landroidx/media3/common/util/ParsableBitArray;I)V
    .locals 12
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "numberOfSpeakers"    # I

    .line 357
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 358
    .local v0, "angularPrecision":Z
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 359
    .local v3, "angularPrecisionDegrees":I
    :goto_0
    const/4 v4, 0x7

    if-eqz v0, :cond_1

    move v1, v4

    .line 360
    .local v1, "elevationAngleBits":I
    :cond_1
    if-eqz v0, :cond_2

    const/16 v5, 0x8

    goto :goto_1

    :cond_2
    const/4 v5, 0x6

    .line 363
    .local v5, "azimuthAngleBits":I
    :goto_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, p1, :cond_7

    .line 364
    const/4 v7, 0x0

    .line 365
    .local v7, "azimuthAngle":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    const/16 v9, 0xb4

    if-eqz v8, :cond_3

    .line 366
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_3

    .line 368
    :cond_3
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 369
    .local v8, "elevationClass":I
    const/4 v10, 0x3

    if-ne v8, v10, :cond_4

    .line 370
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 371
    .local v10, "elevationAngleIdx":I
    mul-int v11, v10, v3

    .line 372
    .local v11, "elevationAngle":I
    if-eqz v11, :cond_4

    .line 373
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 376
    .end local v10    # "elevationAngleIdx":I
    .end local v11    # "elevationAngle":I
    :cond_4
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 377
    .local v10, "azimuthAngleIdx":I
    mul-int v7, v10, v3

    .line 378
    if-eqz v7, :cond_5

    if-eq v7, v9, :cond_5

    .line 379
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 381
    :cond_5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 384
    .end local v8    # "elevationClass":I
    .end local v10    # "azimuthAngleIdx":I
    :goto_3
    if-eqz v7, :cond_6

    if-eq v7, v9, :cond_6

    .line 385
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 386
    add-int/lit8 v6, v6, 0x1

    .line 363
    .end local v7    # "azimuthAngle":I
    :cond_6
    add-int/2addr v6, v2

    goto :goto_2

    .line 390
    .end local v6    # "i":I
    :cond_7
    return-void
.end method

.method private static skipSbrConfig(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 3
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 529
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 530
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 531
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 532
    .local v0, "dfltHeaderExtra1":Z
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 533
    .local v1, "dfltHeaderExtra2":Z
    if-eqz v0, :cond_0

    .line 534
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 536
    :cond_0
    if-eqz v1, :cond_1

    .line 538
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 540
    :cond_1
    return-void
.end method

.method private static skipSpeakerConfig3d(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 5
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 333
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 334
    .local v1, "speakerLayoutType":I
    if-nez v1, :cond_0

    .line 335
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 336
    return-void

    .line 339
    :cond_0
    const/16 v2, 0x8

    const/16 v3, 0x10

    const/4 v4, 0x5

    invoke-static {p0, v4, v2, v3}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 340
    .local v2, "numberOfSpeakers":I
    if-ne v1, v3, :cond_1

    .line 341
    mul-int/lit8 v0, v2, 0x7

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 342
    :cond_1
    if-ne v1, v0, :cond_2

    .line 343
    invoke-static {p0, v2}, Landroidx/media3/extractor/ts/MpeghUtil;->skipMpegh3daFlexibleSpeakerConfig(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 345
    :cond_2
    :goto_0
    return-void
.end method
