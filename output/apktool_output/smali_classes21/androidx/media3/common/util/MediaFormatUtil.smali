.class public final Landroidx/media3/common/util/MediaFormatUtil;
.super Ljava/lang/Object;
.source "MediaFormatUtil.java"


# static fields
.field public static final KEY_MAX_BIT_RATE:Ljava/lang/String; = "max-bitrate"

.field public static final KEY_PCM_ENCODING_EXTENDED:Ljava/lang/String; = "exo-pcm-encoding-int"

.field public static final KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT:Ljava/lang/String; = "exo-pixel-width-height-ratio-float"

.field private static final MAX_POWER_OF_TWO_INT:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFormatFromMediaFormat(Landroid/media/MediaFormat;)Landroidx/media3/common/Format;
    .locals 5
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 74
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 76
    const-string v1, "mime"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 77
    const-string v1, "language"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 79
    const-string v1, "max-bitrate"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 81
    const-string v1, "bitrate"

    invoke-static {p0, v1, v2}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 83
    invoke-static {p0}, Landroidx/media3/common/util/MediaFormatUtil;->getCodecString(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 85
    const-string v1, "frame-rate"

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p0, v1, v3}, Landroidx/media3/common/util/MediaFormatUtil;->getFloatFromIntOrFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)F

    move-result v1

    .line 84
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "width"

    invoke-static {p0, v1, v2}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 90
    const-string v1, "height"

    invoke-static {p0, v1, v2}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 93
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->getPixelWidthHeightRatio(Landroid/media/MediaFormat;F)F

    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 95
    const-string v1, "max-input-size"

    invoke-static {p0, v1, v2}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 94
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "rotation-degrees"

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 101
    invoke-static {p0}, Landroidx/media3/common/util/MediaFormatUtil;->getColorInfo(Landroid/media/MediaFormat;)Landroidx/media3/common/ColorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "sample-rate"

    invoke-static {p0, v1, v2}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 106
    const-string v1, "channel-count"

    invoke-static {p0, v1, v2}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "pcm-encoding"

    invoke-static {p0, v1, v2}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 116
    .local v0, "formatBuilder":Landroidx/media3/common/Format$Builder;
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 117
    .local v1, "csdBuffers":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<[B>;"
    const/4 v2, 0x0

    .line 119
    .local v2, "csdIndex":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csd-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 120
    .local v3, "csdByteBuffer":Ljava/nio/ByteBuffer;
    if-nez v3, :cond_1

    .line 121
    nop

    .line 131
    .end local v3    # "csdByteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 133
    const-string/jumbo v3, "track-id"

    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    .line 137
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    return-object v3

    .line 123
    .restart local v3    # "csdByteBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 124
    .local v4, "csdBufferData":[B
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 127
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 128
    nop

    .end local v3    # "csdByteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "csdBufferData":[B
    add-int/lit8 v2, v2, 0x1

    .line 129
    goto :goto_0
.end method

.method public static createMediaFormatFromFormat(Landroidx/media3/common/Format;)Landroid/media/MediaFormat;
    .locals 5
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 152
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 153
    .local v0, "result":Landroid/media/MediaFormat;
    const-string v1, "bitrate"

    iget v2, p0, Landroidx/media3/common/Format;->bitrate:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 154
    const-string v1, "max-bitrate"

    iget v2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 155
    const-string v1, "channel-count"

    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 156
    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v1

    .line 157
    .local v1, "channelMask":I
    if-eqz v1, :cond_0

    .line 158
    const-string v2, "channel-mask"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 161
    :cond_0
    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0, v2}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Landroidx/media3/common/ColorInfo;)V

    .line 163
    const-string v2, "mime"

    iget-object v3, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v2, "codecs-string"

    iget-object v3, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "frame-rate"

    iget v3, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 166
    const-string/jumbo v2, "width"

    iget v3, p0, Landroidx/media3/common/Format;->width:I

    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 167
    const-string v2, "height"

    iget v3, p0, Landroidx/media3/common/Format;->height:I

    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 169
    iget-object v2, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, v2}, Landroidx/media3/common/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 170
    iget v2, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-static {v0, v2}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetPcmEncoding(Landroid/media/MediaFormat;I)V

    .line 171
    const-string v2, "language"

    iget-object v3, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "max-input-size"

    iget v3, p0, Landroidx/media3/common/Format;->maxInputSize:I

    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 173
    const-string/jumbo v2, "sample-rate"

    iget v3, p0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 174
    const-string v2, "caption-service-number"

    iget v3, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 175
    const-string/jumbo v2, "rotation-degrees"

    iget v3, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 177
    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 178
    .local v2, "selectionFlags":I
    and-int/lit8 v3, v2, 0x4

    const-string v4, "is-autoselect"

    invoke-static {v0, v4, v3}, Landroidx/media3/common/util/MediaFormatUtil;->setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 180
    and-int/lit8 v3, v2, 0x1

    const-string v4, "is-default"

    invoke-static {v0, v4, v3}, Landroidx/media3/common/util/MediaFormatUtil;->setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 181
    and-int/lit8 v3, v2, 0x2

    const-string v4, "is-forced-subtitle"

    invoke-static {v0, v4, v3}, Landroidx/media3/common/util/MediaFormatUtil;->setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 184
    const-string v3, "encoder-delay"

    iget v4, p0, Landroidx/media3/common/Format;->encoderDelay:I

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 185
    const-string v3, "encoder-padding"

    iget v4, p0, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 187
    iget v3, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {v0, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetPixelAspectRatio(Landroid/media/MediaFormat;F)V

    .line 189
    iget-object v3, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 191
    :try_start_0
    const-string/jumbo v3, "track-id"

    iget-object v4, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 192
    :catch_0
    move-exception v3

    .line 196
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getArray(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 424
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 425
    .local v0, "array":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 426
    return-object v0
.end method

.method private static getCodecString(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 4
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 389
    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "video/3gpp"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "level"

    const-string/jumbo v3, "profile"

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    nop

    .line 393
    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 394
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 392
    invoke-static {v0, v1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildH263CodecString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 395
    :cond_0
    nop

    .line 396
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    const-string/jumbo v1, "video/dolby-vision"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    nop

    .line 402
    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 401
    invoke-static {v0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->dolbyVisionConstantToProfileNumber(I)I

    move-result v0

    .line 404
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 403
    invoke-static {v1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->dolbyVisionConstantToLevelNumber(I)I

    move-result v1

    .line 400
    invoke-static {v0, v1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildDolbyVisionCodecString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :cond_1
    const-string v0, "codecs-string"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->getString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getColorInfo(Landroid/media/MediaFormat;)Landroidx/media3/common/ColorInfo;
    .locals 8
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 290
    nop

    .line 294
    nop

    .line 295
    const-string v0, "color-standard"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    .line 297
    .local v0, "colorSpace":I
    nop

    .line 298
    const-string v2, "color-range"

    invoke-static {p0, v2, v1}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v2

    .line 299
    .local v2, "colorRange":I
    nop

    .line 300
    const-string v3, "color-transfer"

    invoke-static {p0, v3, v1}, Landroidx/media3/common/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    .line 303
    .local v3, "colorTransfer":I
    const-string v4, "hdr-static-info"

    invoke-virtual {p0, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 306
    .local v4, "hdrStaticInfoByteBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {v4}, Landroidx/media3/common/util/MediaFormatUtil;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    .line 309
    .local v6, "hdrStaticInfo":[B
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/MediaFormatUtil;->isValidColorSpace(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 310
    const/4 v0, -0x1

    .line 312
    :cond_1
    invoke-static {v2}, Landroidx/media3/common/util/MediaFormatUtil;->isValidColorRange(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 313
    const/4 v2, -0x1

    .line 315
    :cond_2
    invoke-static {v3}, Landroidx/media3/common/util/MediaFormatUtil;->isValidColorTransfer(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 316
    const/4 v3, -0x1

    .line 318
    :cond_3
    if-ne v0, v1, :cond_5

    if-ne v2, v1, :cond_5

    if-ne v3, v1, :cond_5

    if-eqz v6, :cond_4

    goto :goto_1

    .line 329
    :cond_4
    return-object v5

    .line 322
    :cond_5
    :goto_1
    new-instance v1, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 323
    invoke-virtual {v1, v0}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 324
    invoke-virtual {v1, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 325
    invoke-virtual {v1, v3}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 326
    invoke-virtual {v1, v6}, Landroidx/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    .line 322
    return-object v1
.end method

.method public static getFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)F
    .locals 1
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 339
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public static getFloatFromIntOrFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)F
    .locals 2
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 358
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    return p2

    .line 362
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    .line 363
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getValueTypeForKey(Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, "valueType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 365
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v1

    .local v1, "value":F
    goto :goto_0

    .line 368
    .end local v1    # "value":F
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    .line 370
    .end local v0    # "valueType":I
    .restart local v1    # "value":F
    :goto_0
    goto :goto_1

    .line 372
    .end local v1    # "value":F
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 375
    .restart local v1    # "value":F
    goto :goto_1

    .line 373
    .end local v1    # "value":F
    :catch_0
    move-exception v0

    .line 374
    .local v0, "ex":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    .line 377
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "value":F
    :goto_1
    return v1
.end method

.method public static getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 1
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 334
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private static getPixelWidthHeightRatio(Landroid/media/MediaFormat;F)F
    .locals 3
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "defaultValue"    # F

    .line 414
    const-string/jumbo v0, "sar-width"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    const-string/jumbo v1, "sar-height"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 417
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 416
    return v0

    .line 420
    :cond_0
    return p1
.end method

.method public static getString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 346
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public static getTimeLapseFrameRate(Landroid/media/MediaFormat;)Ljava/lang/Integer;
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 442
    const-string/jumbo v0, "time-lapse-enable"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 444
    const-string/jumbo v0, "time-lapse-fps"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 447
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isAudioFormat(Landroid/media/MediaFormat;)Z
    .locals 1
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 436
    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidColorRange(I)Z
    .locals 2
    .param p0, "colorRange"    # I

    .line 529
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static isValidColorSpace(I)Z
    .locals 2
    .param p0, "colorSpace"    # I

    .line 519
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static isValidColorTransfer(I)Z
    .locals 2
    .param p0, "colorTransfer"    # I

    .line 540
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoFormat(Landroid/media/MediaFormat;)Z
    .locals 1
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 431
    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static maybeSetByteBuffer(Landroid/media/MediaFormat;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 260
    if-eqz p2, :cond_0

    .line 261
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 263
    :cond_0
    return-void
.end method

.method public static maybeSetColorInfo(Landroid/media/MediaFormat;Landroidx/media3/common/ColorInfo;)V
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "colorInfo"    # Landroidx/media3/common/ColorInfo;

    .line 273
    if-eqz p1, :cond_0

    .line 274
    const-string v0, "color-transfer"

    iget v1, p1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 275
    const-string v0, "color-standard"

    iget v1, p1, Landroidx/media3/common/ColorInfo;->colorSpace:I

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 276
    const-string v0, "color-range"

    iget v1, p1, Landroidx/media3/common/ColorInfo;->colorRange:I

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 277
    const-string v0, "hdr-static-info"

    iget-object v1, p1, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetByteBuffer(Landroid/media/MediaFormat;Ljava/lang/String;[B)V

    .line 279
    :cond_0
    return-void
.end method

.method public static maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 247
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 250
    :cond_0
    return-void
.end method

.method public static maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 233
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 234
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 236
    :cond_0
    return-void
.end method

.method private static maybeSetPcmEncoding(Landroid/media/MediaFormat;I)V
    .locals 2
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "exoPcmEncoding"    # I

    .line 480
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 481
    return-void

    .line 484
    :cond_0
    const-string v0, "exo-pcm-encoding-int"

    invoke-static {p0, v0, p1}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 485
    sparse-switch p1, :sswitch_data_0

    .line 511
    return-void

    .line 499
    :sswitch_0
    const/16 v0, 0x16

    .line 500
    .local v0, "mediaFormatPcmEncoding":I
    goto :goto_0

    .line 496
    .end local v0    # "mediaFormatPcmEncoding":I
    :sswitch_1
    const/16 v0, 0x15

    .line 497
    .restart local v0    # "mediaFormatPcmEncoding":I
    goto :goto_0

    .line 493
    .end local v0    # "mediaFormatPcmEncoding":I
    :sswitch_2
    const/4 v0, 0x4

    .line 494
    .restart local v0    # "mediaFormatPcmEncoding":I
    goto :goto_0

    .line 487
    .end local v0    # "mediaFormatPcmEncoding":I
    :sswitch_3
    const/4 v0, 0x3

    .line 488
    .restart local v0    # "mediaFormatPcmEncoding":I
    goto :goto_0

    .line 490
    .end local v0    # "mediaFormatPcmEncoding":I
    :sswitch_4
    const/4 v0, 0x2

    .line 491
    .restart local v0    # "mediaFormatPcmEncoding":I
    goto :goto_0

    .line 502
    .end local v0    # "mediaFormatPcmEncoding":I
    :sswitch_5
    const/4 v0, 0x0

    .line 503
    .restart local v0    # "mediaFormatPcmEncoding":I
    nop

    .line 513
    :goto_0
    const-string/jumbo v1, "pcm-encoding"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 514
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method private static maybeSetPixelAspectRatio(Landroid/media/MediaFormat;F)V
    .locals 4
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "pixelWidthHeightRatio"    # F

    .line 461
    const-string v0, "exo-pixel-width-height-ratio-float"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 462
    const/4 v0, 0x1

    .line 463
    .local v0, "pixelAspectRatioWidth":I
    const/4 v1, 0x1

    .line 466
    .local v1, "pixelAspectRatioHeight":I
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    .line 467
    const/high16 v1, 0x40000000    # 2.0f

    .line 468
    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-int v0, v2

    goto :goto_0

    .line 469
    :cond_0
    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 470
    const/high16 v0, 0x40000000    # 2.0f

    .line 471
    int-to-float v2, v0

    div-float/2addr v2, p1

    float-to-int v1, v2

    .line 473
    :cond_1
    :goto_0
    const-string/jumbo v2, "sar-width"

    invoke-virtual {p0, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 474
    const-string/jumbo v2, "sar-height"

    invoke-virtual {p0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 475
    return-void
.end method

.method public static maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 207
    if-eqz p2, :cond_0

    .line 208
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method private static setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 454
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 455
    return-void
.end method

.method public static setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V
    .locals 3
    .param p0, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 219
    .local p1, "csdBuffers":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csd-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
