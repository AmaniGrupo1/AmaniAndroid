.class public final Landroidx/media3/common/audio/AudioMixingUtil;
.super Ljava/lang/Object;
.source "AudioMixingUtil.java"


# static fields
.field private static final FLOAT_PCM_MAX_VALUE:F = 1.0f

.field private static final FLOAT_PCM_MIN_VALUE:F = -1.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canMix(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z
    .locals 3
    .param p0, "audioFormat"    # Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 36
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 37
    return v1

    .line 39
    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ne v0, v2, :cond_1

    .line 40
    return v1

    .line 42
    :cond_1
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static canMix(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z
    .locals 3
    .param p0, "inputAudioFormat"    # Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .param p1, "outputAudioFormat"    # Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 47
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 48
    return v2

    .line 50
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/audio/AudioMixingUtil;->canMix(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    return v2

    .line 53
    :cond_1
    invoke-static {p1}, Landroidx/media3/common/audio/AudioMixingUtil;->canMix(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    return v2

    .line 56
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static floatSampleToInt16Pcm(F)F
    .locals 3
    .param p0, "floatPcmValue"    # F

    .line 155
    nop

    .line 156
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const v0, 0x8000

    goto :goto_0

    :cond_0
    const/16 v0, 0x7fff

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p0

    .line 155
    const/high16 v1, -0x39000000    # -32768.0f

    const v2, 0x46fffe00    # 32767.0f

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v0

    return v0
.end method

.method private static getPcmSample(Ljava/nio/ByteBuffer;ZZ)F
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "int16Buffer"    # Z
    .param p2, "int16Output"    # Z

    .line 147
    if-eqz p2, :cond_1

    .line 148
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/audio/AudioMixingUtil;->floatSampleToInt16Pcm(F)F

    move-result v0

    :goto_0
    return v0

    .line 150
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/audio/AudioMixingUtil;->int16SampleToFloatPcm(S)F

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    :goto_1
    return v0
.end method

.method private static int16SampleToFloatPcm(S)F
    .locals 2
    .param p0, "shortPcmValue"    # S

    .line 163
    int-to-float v0, p0

    if-gez p0, :cond_0

    const v1, 0x8000

    goto :goto_0

    :cond_0
    const/16 v1, 0x7fff

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static mix(Ljava/nio/ByteBuffer;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Ljava/nio/ByteBuffer;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/ChannelMixingMatrix;IZZ)Ljava/nio/ByteBuffer;
    .locals 17
    .param p0, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "inputAudioFormat"    # Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .param p2, "mixingBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "mixingAudioFormat"    # Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .param p4, "matrix"    # Landroidx/media3/common/audio/ChannelMixingMatrix;
    .param p5, "framesToMix"    # I
    .param p6, "accumulate"    # Z
    .param p7, "clipFloatOutput"    # Z

    .line 87
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iget v2, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 88
    .local v2, "int16Input":Z
    :goto_0
    move-object/from16 v6, p3

    iget v7, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-ne v7, v5, :cond_1

    move v3, v4

    .line 89
    .local v3, "int16Output":Z
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/audio/ChannelMixingMatrix;->getInputChannelCount()I

    move-result v4

    .line 90
    .local v4, "inputChannels":I
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/audio/ChannelMixingMatrix;->getOutputChannelCount()I

    move-result v5

    .line 91
    .local v5, "outputChannels":I
    new-array v7, v4, [F

    .line 92
    .local v7, "inputFrame":[F
    new-array v8, v5, [F

    .line 94
    .local v8, "outputFrame":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v10, p5

    if-ge v9, v10, :cond_9

    .line 95
    if-eqz p6, :cond_3

    .line 96
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 97
    .local v11, "position":I
    const/4 v12, 0x0

    .local v12, "outputChannel":I
    :goto_2
    if-ge v12, v5, :cond_2

    .line 98
    nop

    .line 99
    invoke-static {v0, v3, v3}, Landroidx/media3/common/audio/AudioMixingUtil;->getPcmSample(Ljava/nio/ByteBuffer;ZZ)F

    move-result v13

    aput v13, v8, v12

    .line 97
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 101
    .end local v12    # "outputChannel":I
    :cond_2
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    .end local v11    # "position":I
    :cond_3
    const/4 v11, 0x0

    .local v11, "inputChannel":I
    :goto_3
    if-ge v11, v4, :cond_4

    .line 105
    nop

    .line 106
    move-object/from16 v12, p0

    invoke-static {v12, v2, v3}, Landroidx/media3/common/audio/AudioMixingUtil;->getPcmSample(Ljava/nio/ByteBuffer;ZZ)F

    move-result v13

    aput v13, v7, v11

    .line 104
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v12, p0

    .line 109
    .end local v11    # "inputChannel":I
    const/4 v11, 0x0

    .local v11, "outputChannel":I
    :goto_4
    if-ge v11, v5, :cond_8

    .line 110
    const/4 v13, 0x0

    .local v13, "inputChannel":I
    :goto_5
    if-ge v13, v4, :cond_5

    .line 111
    aget v14, v8, v11

    aget v15, v7, v13

    .line 112
    move-object/from16 v1, p4

    invoke-virtual {v1, v13, v11}, Landroidx/media3/common/audio/ChannelMixingMatrix;->getMixingCoefficient(II)F

    move-result v16

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v8, v11

    .line 110
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_5

    :cond_5
    move-object/from16 v1, p4

    .line 115
    .end local v13    # "inputChannel":I
    if-eqz v3, :cond_6

    .line 116
    aget v13, v8, v11

    .line 117
    const/high16 v14, -0x39000000    # -32768.0f

    const v15, 0x46fffe00    # 32767.0f

    invoke-static {v13, v14, v15}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v13

    float-to-int v13, v13

    int-to-short v13, v13

    .line 116
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_7

    .line 119
    :cond_6
    nop

    .line 120
    if-eqz p7, :cond_7

    .line 121
    aget v13, v8, v11

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v13, v14, v15}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v13

    goto :goto_6

    .line 123
    :cond_7
    aget v13, v8, v11

    .line 119
    :goto_6
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 126
    :goto_7
    const/4 v13, 0x0

    aput v13, v8, v11

    .line 109
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto :goto_4

    :cond_8
    move-object/from16 v1, p4

    .line 94
    .end local v11    # "outputChannel":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_9
    move-object/from16 v12, p0

    move-object/from16 v1, p4

    .line 129
    .end local v9    # "i":I
    return-object v0
.end method
