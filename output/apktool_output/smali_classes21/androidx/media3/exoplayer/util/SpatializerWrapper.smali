.class public Landroidx/media3/exoplayer/util/SpatializerWrapper;
.super Ljava/lang/Object;
.source "SpatializerWrapper.java"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

.field private final spatializationSupported:Z

.field private final spatializer:Landroid/media/Spatializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spatializerChangedCallback"    # Ljava/lang/Runnable;
    .param p3, "deviceIsTv"    # Ljava/lang/Boolean;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/media3/common/audio/AudioManagerCompat;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    .line 70
    .local v1, "audioManager":Landroid/media/AudioManager;
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 77
    :cond_1
    invoke-virtual {v1}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    .line 78
    iget-object v3, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    .line 79
    invoke-virtual {v3}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializationSupported:Z

    .line 80
    if-nez p2, :cond_3

    .line 81
    iput-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->handler:Landroid/os/Handler;

    .line 82
    iput-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->listener:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    goto :goto_1

    .line 84
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->handler:Landroid/os/Handler;

    .line 85
    new-instance v0, Landroidx/media3/exoplayer/util/SpatializerWrapper$1;

    invoke-direct {v0, p0, p2}, Landroidx/media3/exoplayer/util/SpatializerWrapper$1;-><init>(Landroidx/media3/exoplayer/util/SpatializerWrapper;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->listener:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 97
    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    iget-object v2, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->handler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/media3/exoplayer/util/SpatializerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroidx/media3/exoplayer/util/SpatializerWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->listener:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-virtual {v0, v3, v2}, Landroid/media/Spatializer;->addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    .line 99
    :goto_1
    return-void

    .line 71
    :cond_4
    :goto_2
    iput-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    .line 72
    iput-boolean v2, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializationSupported:Z

    .line 73
    iput-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->handler:Landroid/os/Handler;

    .line 74
    iput-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->listener:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 75
    return-void
.end method


# virtual methods
.method public canBeSpatialized(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Z
    .locals 6
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p2, "format"    # Landroidx/media3/common/Format;

    .line 140
    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->isSupportedAvailableAndEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 141
    return v1

    .line 144
    :cond_0
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/eac3-joc"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 148
    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    .local v0, "linearChannelCount":I
    :goto_0
    goto :goto_4

    .line 149
    .end local v0    # "linearChannelCount":I
    :cond_2
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/iamf"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    .restart local v0    # "linearChannelCount":I
    :goto_1
    goto :goto_4

    .line 154
    .end local v0    # "linearChannelCount":I
    :cond_4
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_6

    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    const/16 v3, 0x15

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    goto :goto_3

    :cond_6
    :goto_2
    const/16 v0, 0x18

    .restart local v0    # "linearChannelCount":I
    :goto_3
    goto :goto_4

    .line 161
    .end local v0    # "linearChannelCount":I
    :cond_7
    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    .line 164
    .restart local v0    # "linearChannelCount":I
    :goto_4
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v3

    .line 165
    .local v3, "channelConfig":I
    if-nez v3, :cond_8

    .line 166
    return v1

    .line 168
    :cond_8
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 170
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 171
    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 172
    .local v1, "builder":Landroid/media/AudioFormat$Builder;
    iget v4, p2, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v4, v2, :cond_9

    .line 173
    iget v2, p2, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 175
    :cond_9
    iget-object v2, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Spatializer;

    .line 176
    invoke-virtual {p1}, Landroidx/media3/common/AudioAttributes;->getPlatformAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/media/Spatializer;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v2

    .line 175
    return v2
.end method

.method public getSpatializedChannelMasks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->isSupportedAvailableAndEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->getSpatializedChannelMasks()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 192
    :cond_1
    const/16 v0, 0xfc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpatializationSupported()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializationSupported:Z

    return v0
.end method

.method public isSupportedAvailableAndEnabled()Z
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializationSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    .line 196
    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->listener:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->spatializer:Landroid/media/Spatializer;

    iget-object v1, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->listener:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/Spatializer;->removeOnSpatializerStateChangedListener(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    .line 200
    iget-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    return-void

    .line 197
    :cond_1
    :goto_0
    return-void
.end method
