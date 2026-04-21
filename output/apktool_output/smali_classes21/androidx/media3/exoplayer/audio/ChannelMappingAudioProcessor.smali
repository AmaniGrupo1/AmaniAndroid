.class public final Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "ChannelMappingAudioProcessor.java"


# instance fields
.field private outputChannels:[I

.field private pendingOutputChannels:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 7
    .param p1, "inputAudioFormat"    # Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    .line 60
    .local v0, "outputChannels":[I
    if-nez v0, :cond_0

    .line 61
    sget-object v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-object v1

    .line 64
    :cond_0
    iget v1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-static {v1}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 68
    iget v1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    .line 69
    .local v1, "active":Z
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_4

    .line 70
    aget v5, v0, v2

    .line 71
    .local v5, "channelIndex":I
    iget v6, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ge v5, v6, :cond_3

    .line 78
    if-eq v5, v2, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    or-int/2addr v1, v6

    .line 69
    .end local v5    # "channelIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    .restart local v5    # "channelIndex":I
    :cond_3
    new-instance v3, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Channel map ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 74
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") trying to access non-existent input channel."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw v3

    .line 80
    .end local v2    # "i":I
    .end local v5    # "channelIndex":I
    :cond_4
    if-eqz v1, :cond_5

    .line 81
    new-instance v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    array-length v4, v0

    iget v5, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-direct {v2, v3, v4, v5}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    goto :goto_3

    .line 83
    :cond_5
    sget-object v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 80
    :goto_3
    return-object v2

    .line 65
    .end local v1    # "active":Z
    :cond_6
    new-instance v1, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v1, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw v1
.end method

.method protected onFlush(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V
    .locals 1
    .param p1, "streamMetadata"    # Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    .line 131
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 132
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 137
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    .line 138
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 88
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 89
    .local v0, "outputChannels":[I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 90
    .local v1, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 91
    .local v2, "limit":I
    sub-int v3, v2, v1

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int/2addr v3, v4

    .line 92
    .local v3, "frameCount":I
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int/2addr v4, v3

    .line 93
    .local v4, "outputSize":I
    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 94
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    if-ge v1, v2, :cond_1

    .line 95
    array-length v6, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v0, v7

    .line 96
    .local v8, "channelIndex":I
    iget-object v9, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v9, v9, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-static {v9}, Landroidx/media3/common/util/Util;->getByteDepth(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v1

    .line 97
    .local v9, "inputIndex":I
    iget-object v10, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v10, v10, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    sparse-switch v10, :sswitch_data_0

    .line 120
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected encoding: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v10, v10, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 117
    :sswitch_0
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 118
    goto :goto_2

    .line 111
    :sswitch_1
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 112
    goto :goto_2

    .line 107
    :sswitch_2
    invoke-static {p1, v9}, Landroidx/media3/common/util/Util;->getInt24(Ljava/nio/ByteBuffer;I)I

    move-result v10

    invoke-static {v5, v10}, Landroidx/media3/common/util/Util;->putInt24(Ljava/nio/ByteBuffer;I)V

    .line 108
    goto :goto_2

    .line 114
    :sswitch_3
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 115
    goto :goto_2

    .line 99
    :sswitch_4
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 100
    goto :goto_2

    .line 103
    :sswitch_5
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 104
    nop

    .line 95
    .end local v8    # "channelIndex":I
    .end local v9    # "inputIndex":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 123
    :cond_0
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    add-int/2addr v1, v6

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 127
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x10000000 -> :sswitch_5
        0x50000000 -> :sswitch_2
        0x60000000 -> :sswitch_1
        0x70000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setChannelMap([I)V
    .locals 0
    .param p1, "outputChannels"    # [I

    .line 53
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    .line 54
    return-void
.end method
