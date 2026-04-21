.class public final Landroidx/media3/exoplayer/audio/PcmAudioUtil;
.super Ljava/lang/Object;
.source "PcmAudioUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rampUpVolume(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "pcmEncoding"    # I
    .param p2, "pcmFrameSize"    # I
    .param p3, "startFrameIndex"    # I
    .param p4, "rampFrameCount"    # I

    .line 46
    nop

    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 48
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    move v1, p3

    .line 49
    .local v1, "frameIndex":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 50
    .local v2, "frameStartPosition":I
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ge v1, p4, :cond_1

    .line 51
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/PcmAudioUtil;->readAs32BitIntPcm(Ljava/nio/ByteBuffer;I)I

    move-result v3

    int-to-long v3, v3

    .line 52
    .local v3, "pcm32Bit":J
    int-to-long v5, v1

    mul-long/2addr v5, v3

    int-to-long v7, p4

    div-long/2addr v5, v7

    .line 53
    .end local v3    # "pcm32Bit":J
    .local v5, "pcm32Bit":J
    long-to-int v3, v5

    invoke-static {v0, v3, p1}, Landroidx/media3/exoplayer/audio/PcmAudioUtil;->write32BitIntPcm(Ljava/nio/ByteBuffer;II)V

    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int v4, v2, p2

    if-ne v3, v4, :cond_0

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 58
    .end local v5    # "pcm32Bit":J
    :cond_0
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 61
    return-object v0
.end method

.method public static readAs32BitIntPcm(Ljava/nio/ByteBuffer;I)I
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "pcmEncoding"    # I

    .line 72
    sparse-switch p1, :sswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 105
    :sswitch_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->constrainValue(DDD)D

    move-result-wide v0

    .line 106
    .local v0, "doubleValue":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 107
    neg-double v2, v0

    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    .line 109
    :cond_0
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v2, v0

    double-to-int v2, v2

    return v2

    .line 93
    .end local v0    # "doubleValue":D
    :sswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 94
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 96
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 93
    return v0

    .line 84
    :sswitch_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 85
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 86
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 84
    return v0

    .line 78
    :sswitch_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0

    .line 88
    :sswitch_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 91
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 88
    return v0

    .line 80
    :sswitch_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 80
    return v0

    .line 98
    :sswitch_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v0

    .line 99
    .local v0, "floatValue":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 100
    neg-float v1, v0

    const/high16 v2, -0x31000000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 102
    :cond_1
    const/high16 v1, 0x4f000000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 74
    .end local v0    # "floatValue":F
    :sswitch_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    return v0

    .line 76
    :sswitch_8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x10000000 -> :sswitch_3
        0x50000000 -> :sswitch_2
        0x60000000 -> :sswitch_1
        0x70000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static write32BitIntPcm(Ljava/nio/ByteBuffer;II)V
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "pcm32bit"    # I
    .param p2, "pcmEncoding"    # I

    .line 125
    sparse-switch p2, :sswitch_data_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 167
    :sswitch_0
    if-gez p1, :cond_0

    .line 168
    int-to-double v0, p1

    neg-double v0, v0

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 170
    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 172
    :goto_0
    return-void

    .line 145
    :sswitch_1
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 146
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 147
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 148
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 149
    return-void

    .line 151
    :sswitch_2
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 152
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 153
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 154
    return-void

    .line 156
    :sswitch_3
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 158
    return-void

    .line 127
    :sswitch_4
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 128
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 129
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 130
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 131
    return-void

    .line 133
    :sswitch_5
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 134
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 135
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 136
    return-void

    .line 160
    :sswitch_6
    if-gez p1, :cond_1

    .line 161
    int-to-float v0, p1

    neg-float v0, v0

    const/high16 v1, -0x31000000

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 163
    :cond_1
    int-to-float v0, p1

    const/high16 v1, 0x4f000000

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 165
    :goto_1
    return-void

    .line 142
    :sswitch_7
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    return-void

    .line 138
    :sswitch_8
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 139
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 140
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x10000000 -> :sswitch_3
        0x50000000 -> :sswitch_2
        0x60000000 -> :sswitch_1
        0x70000000 -> :sswitch_0
    .end sparse-switch
.end method
