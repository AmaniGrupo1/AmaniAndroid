.class final Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;
.super Ljava/lang/Object;
.source "SpeakerLayoutUtil.java"


# static fields
.field private static final DEFAULT_CHANNEL_MASK:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SpeakerLayoutUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    nop

    .line 43
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->DEFAULT_CHANNEL_MASK:Lcom/google/common/collect/ImmutableList;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getChannelMasksForBluetooth()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 85
    sget-object v0, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->DEFAULT_CHANNEL_MASK:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method private static getChannelMasksForBuiltInSpeakers(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .param p0, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceInfo;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getSpeakerLayoutChannelMask()I

    move-result v0

    .line 94
    .local v0, "builtInChannelMask":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 100
    .end local v0    # "builtInChannelMask":I
    :cond_0
    const-string v0, "SpeakerLayoutUtil"

    const-string v1, "Built-in speaker\'s getSpeakerLayoutChannelMask not usable, defaulting to stereo."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v0, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->DEFAULT_CHANNEL_MASK:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method private static getChannelMasksForHdmiArc(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .param p0, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceInfo;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 107
    nop

    .line 108
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->getChannelMasksFromPcmAudioProfiles(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 109
    .local v0, "channelMasksFromAudioProfiles":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    return-object v0

    .line 113
    :cond_0
    nop

    .line 115
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getAudioDescriptors()Ljava/util/List;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil;->getAllLpcmChannelMasksFromPcmSads(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 116
    .local v1, "channelMasks":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    return-object v1

    .line 120
    :cond_1
    sget-object v2, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->DEFAULT_CHANNEL_MASK:Lcom/google/common/collect/ImmutableList;

    return-object v2
.end method

.method private static getChannelMasksForHdmiEarc(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .param p0, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceInfo;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 127
    nop

    .line 128
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->getChannelMasksFromPcmAudioProfiles(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 129
    .local v0, "channelMasksFromAudioProfiles":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getAudioDescriptors()Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, "audioDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDescriptor;>;"
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_1

    .line 135
    nop

    .line 136
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil;->getAllChannelMasksFromSadbs(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 137
    .local v2, "channelMasksFromSadbs":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    return-object v2

    .line 142
    .end local v2    # "channelMasksFromSadbs":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    :cond_1
    nop

    .line 143
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil;->getAllLpcmChannelMasksFromPcmSads(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 144
    .local v2, "channelMasksFromSads":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 145
    return-object v2

    .line 148
    :cond_2
    sget-object v3, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->DEFAULT_CHANNEL_MASK:Lcom/google/common/collect/ImmutableList;

    return-object v3
.end method

.method private static getChannelMasksForUsb(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .param p0, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceInfo;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 154
    nop

    .line 155
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->getChannelMasksFromPcmAudioProfiles(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 156
    .local v0, "channelMasksFromAudioProfiles":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    return-object v0

    .line 160
    :cond_0
    sget-object v1, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->DEFAULT_CHANNEL_MASK:Lcom/google/common/collect/ImmutableList;

    return-object v1
.end method

.method private static getChannelMasksFromPcmAudioProfiles(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;
    .locals 9
    .param p0, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceInfo;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getAudioProfiles()Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "audioProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioProfile;>;"
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 169
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 170
    .local v1, "channelMasks":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioProfile;

    .line 171
    .local v3, "audioProfile":Landroid/media/AudioProfile;
    invoke-virtual {v3}, Landroid/media/AudioProfile;->getEncapsulationType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 172
    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v3}, Landroid/media/AudioProfile;->getFormat()I

    move-result v4

    invoke-static {v4}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    invoke-virtual {v3}, Landroid/media/AudioProfile;->getChannelMasks()[I

    move-result-object v4

    .line 176
    .local v4, "masks":[I
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    .line 177
    .local v7, "mask":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v7    # "mask":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 180
    .end local v3    # "audioProfile":Landroid/media/AudioProfile;
    .end local v4    # "masks":[I
    :cond_1
    goto :goto_0

    .line 181
    :cond_2
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method public static getLoudspeakerLayoutChannelMasks(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .param p0, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceInfo;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DeviceTypeUtil;->isBluetoothDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->getChannelMasksForBluetooth()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DeviceTypeUtil;->isBuiltInEarpiece(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DeviceTypeUtil;->isBuiltInSpeaker(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->getChannelMasksForBuiltInSpeakers(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 69
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DeviceTypeUtil;->isHdmiArc(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->getChannelMasksForHdmiArc(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 72
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DeviceTypeUtil;->isHdmiEarc(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->getChannelMasksForHdmiEarc(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 75
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DeviceTypeUtil;->isUsbDevice(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->getChannelMasksForUsb(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 80
    :cond_5
    sget-object v0, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->DEFAULT_CHANNEL_MASK:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
