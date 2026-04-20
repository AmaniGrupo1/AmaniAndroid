.class public final Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "ToFloatPcmAudioProcessor.java"


# static fields
.field private static final FLOAT_NAN_AS_INT:I

.field private static final PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR:D = 4.656612875245797E-10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->FLOAT_NAN_AS_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method

.method private static writePcm32BitFloat(ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p0, "pcm32BitInt"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 144
    const-wide v0, 0x3e00000000200000L    # 4.656612875245797E-10

    int-to-double v2, p0

    mul-double/2addr v2, v0

    double-to-float v0, v2

    .line 145
    .local v0, "pcm32BitFloat":F
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 146
    .local v1, "floatBits":I
    sget v2, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->FLOAT_NAN_AS_INT:I

    if-ne v1, v2, :cond_0

    .line 147
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 149
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 150
    return-void
.end method


# virtual methods
.method public onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 5
    .param p1, "inputAudioFormat"    # Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 49
    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 50
    .local v0, "encoding":I
    invoke-static {v0}, Landroidx/media3/common/util/Util;->isEncodingHighResolutionPcm(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v1, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw v1

    .line 53
    :cond_1
    :goto_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 54
    new-instance v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v4, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v2, v3, v4, v1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    goto :goto_1

    .line 56
    :cond_2
    sget-object v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 53
    :goto_1
    return-object v2
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 62
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 63
    .local v1, "limit":I
    sub-int v2, v1, v0

    .line 66
    .local v2, "size":I
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    sparse-switch v3, :sswitch_data_0

    .line 130
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 118
    :sswitch_0
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 119
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 120
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 119
    add-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 122
    .end local v4    # "i":I
    :cond_0
    goto/16 :goto_6

    .line 107
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :sswitch_1
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 108
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    move v4, v0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 109
    add-int/lit8 v5, v4, 0x3

    .line 110
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x2

    .line 111
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    .line 112
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    .line 113
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    .line 114
    .local v5, "pcm32BitInteger":I
    invoke-static {v5, v3}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 108
    .end local v5    # "pcm32BitInteger":I
    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 116
    .end local v4    # "i":I
    :cond_1
    goto/16 :goto_6

    .line 86
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :sswitch_2
    div-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 87
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    move v4, v0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 88
    add-int/lit8 v5, v4, 0x2

    .line 89
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x1

    .line 90
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    .line 91
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    .line 92
    .restart local v5    # "pcm32BitInteger":I
    invoke-static {v5, v3}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 87
    .end local v5    # "pcm32BitInteger":I
    add-int/lit8 v4, v4, 0x3

    goto :goto_2

    .line 94
    .end local v4    # "i":I
    :cond_2
    goto/16 :goto_6

    .line 96
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :sswitch_3
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 97
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    move v4, v0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v1, :cond_3

    .line 98
    nop

    .line 99
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    .line 100
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x2

    .line 101
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x3

    .line 102
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    .line 103
    .restart local v5    # "pcm32BitInteger":I
    invoke-static {v5, v3}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 97
    .end local v5    # "pcm32BitInteger":I
    add-int/lit8 v4, v4, 0x4

    goto :goto_3

    .line 105
    .end local v4    # "i":I
    :cond_3
    goto :goto_6

    .line 76
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :sswitch_4
    div-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 77
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    move v4, v0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v1, :cond_4

    .line 78
    nop

    .line 79
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x1

    .line 80
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x2

    .line 81
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    .line 82
    .restart local v5    # "pcm32BitInteger":I
    invoke-static {v5, v3}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 77
    .end local v5    # "pcm32BitInteger":I
    add-int/lit8 v4, v4, 0x3

    goto :goto_4

    .line 84
    .end local v4    # "i":I
    :cond_4
    goto :goto_6

    .line 68
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :sswitch_5
    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 69
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    move v4, v0

    .restart local v4    # "i":I
    :goto_5
    if-ge v4, v1, :cond_5

    .line 70
    nop

    .line 71
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    .line 72
    .restart local v5    # "pcm32BitInteger":I
    invoke-static {v5, v3}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 69
    .end local v5    # "pcm32BitInteger":I
    add-int/lit8 v4, v4, 0x2

    goto :goto_5

    .line 74
    .end local v4    # "i":I
    :cond_5
    nop

    .line 133
    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 135
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x50000000 -> :sswitch_2
        0x60000000 -> :sswitch_1
        0x70000000 -> :sswitch_0
    .end sparse-switch
.end method
