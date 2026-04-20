.class public final Landroidx/media3/extractor/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;,
        Landroidx/media3/extractor/VorbisUtil$CommentHeader;,
        Landroidx/media3/extractor/VorbisUtil$Mode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    return-void
.end method

.method public static getVorbisToAndroidChannelLayoutMapping(I)[I
    .locals 5
    .param p0, "channelCount"    # I

    .line 154
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 166
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 164
    :pswitch_1
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    .line 162
    :pswitch_2
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    return-object v0

    .line 160
    :pswitch_3
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    return-object v0

    .line 158
    :pswitch_4
    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v2, v1, v0, v3, v4}, [I

    move-result-object v0

    return-object v0

    .line 156
    :pswitch_5
    filled-new-array {v2, v1, v0}, [I

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x7
        0x5
        0x6
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x1
        0x6
        0x5
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x1
        0x5
        0x3
        0x4
    .end array-data
.end method

.method public static iLog(I)I
    .locals 1
    .param p0, "x"    # I

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "val":I
    :goto_0
    if-lez p0, :cond_0

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 183
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .locals 6
    .param p0, "entries"    # J
    .param p2, "dimension"    # J

    .line 681
    long-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/common/Metadata;"
        }
    .end annotation

    .line 362
    .local p0, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v0, "metadataEntries":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Metadata$Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 364
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 365
    .local v2, "vorbisComment":Ljava/lang/String;
    const-string v3, "="

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "keyAndValue":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    const-string v6, "VorbisUtil"

    if-eq v4, v5, :cond_0

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse Vorbis comment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    goto :goto_1

    .line 371
    :cond_0
    const/4 v4, 0x0

    aget-object v5, v3, v4

    const-string v7, "METADATA_BLOCK_PICTURE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 376
    :try_start_0
    aget-object v5, v3, v7

    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 377
    .local v4, "decoded":[B
    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v5, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v5}, Landroidx/media3/extractor/metadata/flac/PictureFrame;->fromPictureBlock(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/flac/PictureFrame;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    nop

    .end local v4    # "decoded":[B
    goto :goto_1

    .line 378
    :catch_0
    move-exception v4

    .line 379
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "Failed to parse vorbis picture"

    invoke-static {v6, v5, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    .end local v4    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 382
    :cond_1
    new-instance v5, Landroidx/media3/extractor/metadata/vorbis/VorbisComment;

    aget-object v4, v3, v4

    aget-object v6, v3, v7

    invoke-direct {v5, v4, v6}, Landroidx/media3/extractor/metadata/vorbis/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .local v5, "entry":Landroidx/media3/extractor/metadata/vorbis/VorbisComment;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v2    # "vorbisComment":Ljava/lang/String;
    .end local v3    # "keyAndValue":[Ljava/lang/String;
    .end local v5    # "entry":Landroidx/media3/extractor/metadata/vorbis/VorbisComment;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method public static parseVorbisCsdFromEsdsInitializationData([B)Lcom/google/common/collect/ImmutableList;
    .locals 9
    .param p0, "initializationData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/collect/ImmutableList<",
            "[B>;"
        }
    .end annotation

    .line 196
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 197
    .local v0, "buffer":Landroidx/media3/common/util/ParsableByteArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "identificationHeaderLength":I
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v4, 0xff

    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 201
    add-int/lit16 v2, v2, 0xff

    .line 202
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    add-int/2addr v2, v3

    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, "commentHeaderLength":I
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 208
    add-int/lit16 v3, v3, 0xff

    .line 209
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/2addr v3, v1

    .line 214
    new-array v1, v2, [B

    .line 215
    .local v1, "csd0":[B
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 216
    .local v4, "identificationHeaderOffset":I
    const/4 v5, 0x0

    invoke-static {p0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    add-int v6, v4, v2

    add-int/2addr v6, v3

    .line 227
    .local v6, "setupHeaderOffset":I
    array-length v7, p0

    sub-int/2addr v7, v6

    .line 228
    .local v7, "setupHeaderLength":I
    new-array v8, v7, [B

    .line 229
    .local v8, "csd1":[B
    invoke-static {p0, v6, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    invoke-static {v1, v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    return-object v5
.end method

.method private static readFloors(Landroidx/media3/extractor/VorbisBitArray;)V
    .locals 15
    .param p0, "bitArray"    # Landroidx/media3/extractor/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 570
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 571
    .local v1, "floorCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_8

    .line 572
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 573
    .local v5, "floorType":I
    const/4 v6, 0x4

    const/16 v7, 0x8

    packed-switch v5, :pswitch_data_0

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "floor type greater than 1 not decodable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 586
    :pswitch_0
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 587
    .local v4, "partitions":I
    const/4 v8, -0x1

    .line 588
    .local v8, "maximumClass":I
    new-array v9, v4, [I

    .line 589
    .local v9, "partitionClassList":[I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v4, :cond_1

    .line 590
    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v9, v10

    .line 591
    aget v11, v9, v10

    if-le v11, v8, :cond_0

    .line 592
    aget v8, v9, v10

    .line 589
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 595
    .end local v10    # "j":I
    :cond_1
    add-int/lit8 v10, v8, 0x1

    new-array v10, v10, [I

    .line 596
    .local v10, "classDimensions":[I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    array-length v12, v10

    const/4 v13, 0x2

    if-ge v11, v12, :cond_4

    .line 597
    const/4 v12, 0x3

    invoke-virtual {p0, v12}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    add-int/2addr v12, v2

    aput v12, v10, v11

    .line 598
    invoke-virtual {p0, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    .line 599
    .local v12, "classSubclasses":I
    if-lez v12, :cond_2

    .line 600
    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 602
    :cond_2
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_3
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_3

    .line 603
    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 602
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 596
    .end local v12    # "classSubclasses":I
    .end local v13    # "k":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 606
    .end local v11    # "j":I
    :cond_4
    invoke-virtual {p0, v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 607
    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 608
    .local v6, "rangeBits":I
    const/4 v7, 0x0

    .line 609
    .local v7, "count":I
    const/4 v11, 0x0

    .restart local v11    # "j":I
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_4
    if-ge v11, v4, :cond_6

    .line 610
    aget v13, v9, v11

    .line 611
    .local v13, "idx":I
    aget v14, v10, v13

    add-int/2addr v7, v14

    .line 612
    :goto_5
    if-ge v12, v7, :cond_5

    .line 613
    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 612
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 609
    .end local v13    # "idx":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 616
    .end local v11    # "j":I
    .end local v12    # "k":I
    :cond_6
    goto :goto_7

    .line 575
    .end local v4    # "partitions":I
    .end local v6    # "rangeBits":I
    .end local v7    # "count":I
    .end local v8    # "maximumClass":I
    .end local v9    # "partitionClassList":[I
    .end local v10    # "classDimensions":[I
    :pswitch_1
    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 576
    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 577
    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 578
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 579
    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 580
    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 581
    .local v4, "floorNumberOfBooks":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_6
    if-ge v6, v4, :cond_7

    .line 582
    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 581
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 584
    .end local v6    # "j":I
    :cond_7
    nop

    .line 571
    .end local v4    # "floorNumberOfBooks":I
    .end local v5    # "floorType":I
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 622
    .end local v3    # "i":I
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readMappings(ILandroidx/media3/extractor/VorbisBitArray;)V
    .locals 10
    .param p0, "channels"    # I
    .param p1, "bitArray"    # Landroidx/media3/extractor/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 496
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 497
    .local v0, "mappingsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 498
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    .line 499
    .local v3, "mappingType":I
    if-eqz v3, :cond_0

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mapping type other than 0 not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    goto :goto_5

    .line 504
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    .line 505
    invoke-virtual {p1, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    .local v4, "submaps":I
    goto :goto_1

    .line 507
    .end local v4    # "submaps":I
    :cond_1
    const/4 v4, 0x1

    .line 510
    .restart local v4    # "submaps":I
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_2

    .line 511
    invoke-virtual {p1, v7}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    .line 512
    .local v6, "couplingSteps":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v6, :cond_2

    .line 513
    add-int/lit8 v9, p0, -0x1

    invoke-static {v9}, Landroidx/media3/extractor/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 514
    add-int/lit8 v9, p0, -0x1

    invoke-static {v9}, Landroidx/media3/extractor/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 512
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 519
    .end local v6    # "couplingSteps":I
    .end local v8    # "j":I
    :cond_2
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_5

    .line 523
    if-le v4, v1, :cond_3

    .line 524
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v6, p0, :cond_3

    .line 525
    invoke-virtual {p1, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 524
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 528
    .end local v6    # "j":I
    :cond_3
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    if-ge v5, v4, :cond_4

    .line 529
    invoke-virtual {p1, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 530
    invoke-virtual {p1, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 531
    invoke-virtual {p1, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 528
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 497
    .end local v3    # "mappingType":I
    .end local v4    # "submaps":I
    .end local v5    # "j":I
    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    .restart local v3    # "mappingType":I
    .restart local v4    # "submaps":I
    :cond_5
    const-string/jumbo v1, "to reserved bits must be zero after mapping coupling steps"

    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 534
    .end local v2    # "i":I
    .end local v3    # "mappingType":I
    .end local v4    # "submaps":I
    :cond_6
    return-void
.end method

.method private static readModes(Landroidx/media3/extractor/VorbisBitArray;)[Landroidx/media3/extractor/VorbisUtil$Mode;
    .locals 8
    .param p0, "bitArray"    # Landroidx/media3/extractor/VorbisBitArray;

    .line 483
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 484
    .local v0, "modeCount":I
    new-array v1, v0, [Landroidx/media3/extractor/VorbisUtil$Mode;

    .line 485
    .local v1, "modes":[Landroidx/media3/extractor/VorbisUtil$Mode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 486
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    .line 487
    .local v3, "blockFlag":Z
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 488
    .local v5, "windowType":I
    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 489
    .local v4, "transformType":I
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 490
    .local v6, "mapping":I
    new-instance v7, Landroidx/media3/extractor/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Landroidx/media3/extractor/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    .line 485
    .end local v3    # "blockFlag":Z
    .end local v4    # "transformType":I
    .end local v5    # "windowType":I
    .end local v6    # "mapping":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static readResidues(Landroidx/media3/extractor/VorbisBitArray;)V
    .locals 12
    .param p0, "bitArray"    # Landroidx/media3/extractor/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 537
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 538
    .local v1, "residueCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_6

    .line 539
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 540
    .local v4, "residueType":I
    const/4 v5, 0x2

    if-gt v4, v5, :cond_5

    .line 544
    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 545
    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 546
    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 547
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    .line 548
    .local v5, "classifications":I
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 549
    new-array v7, v5, [I

    .line 550
    .local v7, "cascade":[I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v5, :cond_1

    .line 551
    const/4 v9, 0x0

    .line 552
    .local v9, "highBits":I
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    .line 553
    .local v10, "lowBits":I
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 554
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    .line 556
    :cond_0
    mul-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v10

    aput v11, v7, v8

    .line 550
    .end local v9    # "highBits":I
    .end local v10    # "lowBits":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 558
    .end local v8    # "j":I
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_2
    if-ge v8, v5, :cond_4

    .line 559
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_3
    if-ge v9, v6, :cond_3

    .line 560
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 561
    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 559
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 558
    .end local v9    # "k":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 538
    .end local v4    # "residueType":I
    .end local v5    # "classifications":I
    .end local v7    # "cascade":[I
    .end local v8    # "j":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 541
    .restart local v4    # "residueType":I
    :cond_5
    const-string/jumbo v0, "residueType greater than 2 is not decodable"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 567
    .end local v3    # "i":I
    .end local v4    # "residueType":I
    :cond_6
    return-void
.end method

.method public static readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/VorbisUtil$CommentHeader;
    .locals 1
    .param p0, "headerData"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 301
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Landroidx/media3/extractor/VorbisUtil;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object v0

    return-object v0
.end method

.method public static readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/VorbisUtil$CommentHeader;
    .locals 9
    .param p0, "headerData"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "hasMetadataHeader"    # Z
    .param p2, "hasFramingBit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 324
    if-eqz p1, :cond_0

    .line 325
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroidx/media3/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    .line 327
    :cond_0
    const/4 v0, 0x7

    .line 329
    .local v0, "length":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    .line 330
    .local v1, "len":I
    add-int/lit8 v0, v0, 0x4

    .line 331
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "vendor":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 334
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v3

    .line 335
    .local v3, "commentListLen":J
    long-to-int v5, v3

    new-array v5, v5, [Ljava/lang/String;

    .line 336
    .local v5, "comments":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x4

    .line 337
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    int-to-long v7, v6

    cmp-long v7, v7, v3

    if-gez v7, :cond_1

    .line 338
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v7

    long-to-int v1, v7

    .line 339
    add-int/lit8 v0, v0, 0x4

    .line 340
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 341
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v0, v7

    .line 337
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 343
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    goto :goto_1

    .line 344
    :cond_2
    const-string v6, "framing bit expected to be set"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v6

    throw v6

    .line 347
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 348
    new-instance v6, Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    invoke-direct {v6, v2, v5, v0}, Landroidx/media3/extractor/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v6
.end method

.method public static readVorbisIdentificationHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;
    .locals 14
    .param p0, "headerData"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 251
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroidx/media3/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    .line 253
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v3

    .line 254
    .local v3, "version":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 255
    .local v4, "channels":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v5

    .line 256
    .local v5, "sampleRate":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 257
    .local v2, "bitrateMaximum":I
    if-gtz v2, :cond_0

    .line 258
    const/4 v2, -0x1

    move v6, v2

    goto :goto_0

    .line 257
    :cond_0
    move v6, v2

    .line 260
    .end local v2    # "bitrateMaximum":I
    .local v6, "bitrateMaximum":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 261
    .local v2, "bitrateNominal":I
    if-gtz v2, :cond_1

    .line 262
    const/4 v2, -0x1

    move v7, v2

    goto :goto_1

    .line 261
    :cond_1
    move v7, v2

    .line 264
    .end local v2    # "bitrateNominal":I
    .local v7, "bitrateNominal":I
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 265
    .local v2, "bitrateMinimum":I
    if-gtz v2, :cond_2

    .line 266
    const/4 v2, -0x1

    move v8, v2

    goto :goto_2

    .line 265
    :cond_2
    move v8, v2

    .line 268
    .end local v2    # "bitrateMinimum":I
    .local v8, "bitrateMinimum":I
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 269
    .local v13, "blockSize":I
    and-int/lit8 v2, v13, 0xf

    int-to-double v9, v2

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-int v9, v9

    .line 270
    .local v9, "blockSize0":I
    and-int/lit16 v2, v13, 0xf0

    shr-int/lit8 v2, v2, 0x4

    move v10, v0

    int-to-double v0, v2

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 272
    .local v0, "blockSize1":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/2addr v1, v10

    if-lez v1, :cond_3

    move v11, v10

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 274
    .local v11, "framingFlag":Z
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    .line 276
    .local v12, "data":[B
    new-instance v2, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    move v10, v0

    .end local v0    # "blockSize1":I
    .local v10, "blockSize1":I
    invoke-direct/range {v2 .. v12}, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;-><init>(IIIIIIIIZ[B)V

    return-object v2
.end method

.method public static readVorbisModes(Landroidx/media3/common/util/ParsableByteArray;I)[Landroidx/media3/extractor/VorbisUtil$Mode;
    .locals 6
    .param p0, "headerData"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "channels"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 452
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroidx/media3/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    .line 454
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 456
    .local v0, "numberOfBooks":I
    new-instance v1, Landroidx/media3/extractor/VorbisBitArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/extractor/VorbisBitArray;-><init>([B)V

    .line 457
    .local v1, "bitArray":Landroidx/media3/extractor/VorbisBitArray;
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 459
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 460
    invoke-static {v1}, Landroidx/media3/extractor/VorbisUtil;->skipBook(Landroidx/media3/extractor/VorbisBitArray;)V

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 464
    .local v2, "timeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x0

    if-ge v3, v2, :cond_2

    .line 465
    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    if-nez v5, :cond_1

    .line 464
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 466
    :cond_1
    const-string/jumbo v5, "placeholder of time domain transforms not zeroed out"

    invoke-static {v5, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v4

    throw v4

    .line 470
    .end local v3    # "i":I
    :cond_2
    invoke-static {v1}, Landroidx/media3/extractor/VorbisUtil;->readFloors(Landroidx/media3/extractor/VorbisBitArray;)V

    .line 471
    invoke-static {v1}, Landroidx/media3/extractor/VorbisUtil;->readResidues(Landroidx/media3/extractor/VorbisBitArray;)V

    .line 472
    invoke-static {p1, v1}, Landroidx/media3/extractor/VorbisUtil;->readMappings(ILandroidx/media3/extractor/VorbisBitArray;)V

    .line 474
    invoke-static {v1}, Landroidx/media3/extractor/VorbisUtil;->readModes(Landroidx/media3/extractor/VorbisBitArray;)[Landroidx/media3/extractor/VorbisUtil$Mode;

    move-result-object v3

    .line 475
    .local v3, "modes":[Landroidx/media3/extractor/VorbisUtil$Mode;
    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 479
    return-object v3

    .line 476
    :cond_3
    const-string v5, "framing bit after modes not set as expected"

    invoke-static {v5, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v4

    throw v4
.end method

.method private static skipBook(Landroidx/media3/extractor/VorbisBitArray;)V
    .locals 10
    .param p0, "bitArray"    # Landroidx/media3/extractor/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 625
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    const/4 v3, 0x0

    if-ne v1, v2, :cond_a

    .line 630
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    .line 631
    .local v1, "dimensions":I
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    .line 633
    .local v0, "entries":I
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v2

    .line 634
    .local v2, "isOrdered":Z
    const/4 v4, 0x5

    if-nez v2, :cond_3

    .line 635
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v5

    .line 636
    .local v5, "isSparse":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 637
    if-eqz v5, :cond_0

    .line 638
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 639
    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    goto :goto_1

    .line 642
    :cond_0
    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 636
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 645
    .end local v5    # "isSparse":Z
    .end local v6    # "i":I
    :cond_2
    goto :goto_3

    .line 646
    :cond_3
    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 647
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_4

    .line 648
    sub-int v5, v0, v4

    invoke-static {v5}, Landroidx/media3/extractor/VorbisUtil;->iLog(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2

    .line 652
    .end local v4    # "i":I
    :cond_4
    :goto_3
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 653
    .local v5, "lookupType":I
    const/4 v6, 0x2

    if-gt v5, v6, :cond_9

    .line 656
    const/4 v3, 0x1

    if-eq v5, v3, :cond_5

    if-ne v5, v6, :cond_8

    .line 657
    :cond_5
    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 658
    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 659
    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 660
    .local v4, "valueBits":I
    invoke-virtual {p0, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 662
    if-ne v5, v3, :cond_7

    .line 663
    if-eqz v1, :cond_6

    .line 664
    int-to-long v6, v0

    int-to-long v8, v1

    invoke-static {v6, v7, v8, v9}, Landroidx/media3/extractor/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v6

    .local v6, "lookupValuesCount":J
    goto :goto_4

    .line 666
    .end local v6    # "lookupValuesCount":J
    :cond_6
    const-wide/16 v6, 0x0

    .restart local v6    # "lookupValuesCount":J
    goto :goto_4

    .line 669
    .end local v6    # "lookupValuesCount":J
    :cond_7
    int-to-long v6, v0

    int-to-long v8, v1

    mul-long/2addr v6, v8

    .line 672
    .restart local v6    # "lookupValuesCount":J
    :goto_4
    int-to-long v8, v4

    mul-long/2addr v8, v6

    long-to-int v3, v8

    invoke-virtual {p0, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 674
    .end local v4    # "valueBits":I
    .end local v6    # "lookupValuesCount":J
    :cond_8
    return-void

    .line 654
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lookup type greater than 2 not decodable: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 626
    .end local v0    # "entries":I
    .end local v1    # "dimensions":I
    .end local v2    # "isOrdered":Z
    .end local v5    # "lookupType":I
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 627
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z
    .locals 4
    .param p0, "headerType"    # I
    .param p1, "header"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "quiet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    .line 403
    if-eqz p2, :cond_0

    .line 404
    return v2

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "too short header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 411
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_3

    .line 412
    if-eqz p2, :cond_2

    .line 413
    return v2

    .line 415
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected header type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 416
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 420
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_5

    .line 421
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_5

    .line 422
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_5

    .line 423
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x62

    if-ne v0, v1, :cond_5

    .line 424
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_5

    .line 425
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x73

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 433
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 426
    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 427
    return v2

    .line 429
    :cond_6
    const-string v0, "expected characters \'vorbis\'"

    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method
