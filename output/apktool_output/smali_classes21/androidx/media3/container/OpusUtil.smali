.class public Landroidx/media3/container/OpusUtil;
.super Ljava/lang/Object;
.source "OpusUtil.java"


# static fields
.field private static final DEFAULT_SEEK_PRE_ROLL_SAMPLES:I = 0xf00

.field private static final FULL_CODEC_INITIALIZATION_DATA_BUFFER_COUNT:I = 0x3

.field public static final MAX_BYTES_PER_SECOND:I = 0xf906

.field public static final SAMPLE_RATE:I = 0xbb80


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildInitializationData([B)Ljava/util/List;
    .locals 7
    .param p0, "header"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 58
    invoke-static {p0}, Landroidx/media3/container/OpusUtil;->getPreSkipSamples([B)I

    move-result v0

    .line 59
    .local v0, "preSkipSamples":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Landroidx/media3/container/OpusUtil;->sampleCountToNanoseconds(J)J

    move-result-wide v1

    .line 60
    .local v1, "preSkipNanos":J
    const-wide/16 v3, 0xf00

    invoke-static {v3, v4}, Landroidx/media3/container/OpusUtil;->sampleCountToNanoseconds(J)J

    move-result-wide v3

    .line 62
    .local v3, "seekPreRollNanos":J
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v5, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v1, v2}, Landroidx/media3/container/OpusUtil;->buildNativeOrderByteArray(J)[B

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v3, v4}, Landroidx/media3/container/OpusUtil;->buildNativeOrderByteArray(J)[B

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object v5
.end method

.method private static buildNativeOrderByteArray(J)[B
    .locals 2
    .param p0, "value"    # J

    .line 202
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static getChannelCount([B)I
    .locals 1
    .param p0, "header"    # [B

    .line 47
    const/16 v0, 0x9

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static getPacketDurationUs(BB)J
    .locals 9
    .param p0, "packetByte0"    # B
    .param p1, "packetByte1"    # B

    .line 171
    and-int/lit16 v0, p0, 0xff

    .line 173
    .local v0, "toc":I
    and-int/lit8 v1, v0, 0x3

    packed-switch v1, :pswitch_data_0

    .line 182
    and-int/lit8 v1, p1, 0x3f

    .local v1, "frames":I
    goto :goto_0

    .line 179
    .end local v1    # "frames":I
    :pswitch_0
    const/4 v1, 0x2

    .line 180
    .restart local v1    # "frames":I
    goto :goto_0

    .line 175
    .end local v1    # "frames":I
    :pswitch_1
    const/4 v1, 0x1

    .line 176
    .restart local v1    # "frames":I
    nop

    .line 186
    :goto_0
    shr-int/lit8 v2, v0, 0x3

    .line 187
    .local v2, "config":I
    and-int/lit8 v3, v2, 0x3

    .line 189
    .local v3, "length":I
    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    .line 190
    const/16 v4, 0x9c4

    shl-int/2addr v4, v3

    .local v4, "frameDurationUs":I
    goto :goto_1

    .line 191
    .end local v4    # "frameDurationUs":I
    :cond_0
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v2, v4, :cond_1

    .line 192
    and-int/lit8 v4, v3, 0x1

    shl-int v4, v5, v4

    .restart local v4    # "frameDurationUs":I
    goto :goto_1

    .line 193
    .end local v4    # "frameDurationUs":I
    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 194
    const v4, 0xea60

    .restart local v4    # "frameDurationUs":I
    goto :goto_1

    .line 196
    .end local v4    # "frameDurationUs":I
    :cond_2
    shl-int v4, v5, v3

    .line 198
    .restart local v4    # "frameDurationUs":I
    :goto_1
    int-to-long v5, v1

    int-to-long v7, v4

    mul-long/2addr v5, v7

    return-wide v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getPacketDurationUs([B)J
    .locals 4
    .param p0, "buffer"    # [B

    .line 139
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-byte v0, p0, v3

    :cond_0
    invoke-static {v1, v0}, Landroidx/media3/container/OpusUtil;->getPacketDurationUs(BB)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPreSkipSamples([B)I
    .locals 2
    .param p0, "header"    # [B

    .line 149
    const/16 v0, 0xb

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0xa

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static needToDecodeOpusFrame(JJ)Z
    .locals 6
    .param p0, "startTimeUs"    # J
    .param p2, "frameTimeUs"    # J

    .line 165
    sub-long v0, p0, p2

    .line 166
    const-wide/16 v2, 0xf00

    invoke-static {v2, v3}, Landroidx/media3/container/OpusUtil;->sampleCountToNanoseconds(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0
.end method

.method public static parseOggPacketAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 79
    invoke-static {p0}, Landroidx/media3/container/OpusUtil;->parseOggPacketForPreAudioSampleByteCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 80
    .local v0, "preAudioPacketByteCount":I
    add-int/lit8 v1, v0, 0x1a

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 82
    .local v1, "numPageSegments":I
    add-int/lit8 v2, v1, 0x1b

    add-int/2addr v2, v0

    .line 83
    .local v2, "indexFirstOpusPacket":I
    nop

    .line 85
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 86
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 84
    :goto_0
    invoke-static {v3, v4}, Landroidx/media3/container/OpusUtil;->getPacketDurationUs(BB)J

    move-result-wide v3

    .line 87
    .local v3, "packetDurationUs":J
    const-wide/32 v5, 0xbb80

    mul-long/2addr v5, v3

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    long-to-int v5, v5

    return v5
.end method

.method public static parseOggPacketForPreAudioSampleByteCount(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 98
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    const/16 v0, 0x1c

    .line 104
    .local v0, "idHeaderPageSize":I
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 105
    .local v1, "idHeaderPageNumOfSegments":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 106
    add-int/lit8 v3, v2, 0x1b

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/2addr v0, v3

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x1c

    .line 111
    .local v2, "commentHeaderPageSize":I
    add-int/lit8 v3, v0, 0x1a

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 112
    .local v3, "commentHeaderPageSizeNumOfSegments":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 113
    add-int/lit8 v5, v0, 0x1b

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/2addr v2, v5

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 115
    .end local v4    # "i":I
    :cond_2
    add-int v4, v0, v2

    return v4
.end method

.method public static parsePacketAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 127
    nop

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    :cond_0
    invoke-static {v1, v0}, Landroidx/media3/container/OpusUtil;->getPacketDurationUs(BB)J

    move-result-wide v0

    .line 129
    .local v0, "packetDurationUs":J
    const-wide/32 v2, 0xbb80

    mul-long/2addr v2, v0

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v2, v2

    return v2
.end method

.method private static sampleCountToNanoseconds(J)J
    .locals 4
    .param p0, "sampleCount"    # J

    .line 206
    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr v0, p0

    const-wide/32 v2, 0xbb80

    div-long/2addr v0, v2

    return-wide v0
.end method
