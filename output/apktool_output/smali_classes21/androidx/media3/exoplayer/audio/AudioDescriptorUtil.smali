.class final Landroidx/media3/exoplayer/audio/AudioDescriptorUtil;
.super Ljava/lang/Object;
.source "AudioDescriptorUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "AudioDescriptorUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllChannelMasksFromSadbs(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    .local p0, "audioDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDescriptor;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "channelMasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDescriptor;

    .line 105
    .local v2, "audioDescriptor":Landroid/media/AudioDescriptor;
    invoke-virtual {v2}, Landroid/media/AudioDescriptor;->getStandard()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 106
    invoke-virtual {v2}, Landroid/media/AudioDescriptor;->getDescriptor()[B

    move-result-object v3

    .line 107
    .local v3, "data":[B
    array-length v4, v3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid SADB length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AudioDescriptorUtil"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    goto :goto_0

    .line 114
    :cond_1
    invoke-static {v3}, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil;->getChannelMaskFromSadb([B)I

    move-result v4

    .line 115
    .local v4, "channelMask":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v2    # "audioDescriptor":Landroid/media/AudioDescriptor;
    .end local v3    # "data":[B
    .end local v4    # "channelMask":I
    :cond_2
    goto :goto_0

    .line 118
    :cond_3
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 119
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 101
    .end local v0    # "channelMasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static getAllLpcmChannelMasksFromPcmSads(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 54
    .local p0, "audioDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDescriptor;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 59
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 60
    .local v0, "channelMasks":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDescriptor;

    .line 61
    .local v2, "audioDescriptor":Landroid/media/AudioDescriptor;
    invoke-virtual {v2}, Landroid/media/AudioDescriptor;->getStandard()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 62
    invoke-virtual {v2}, Landroid/media/AudioDescriptor;->getDescriptor()[B

    move-result-object v3

    .line 63
    .local v3, "data":[B
    array-length v5, v3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid SAD length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AudioDescriptorUtil"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    const/4 v5, 0x0

    aget-byte v5, v3, v5

    .line 70
    .local v5, "firstByte":B
    and-int/lit8 v6, v5, 0x7

    add-int/2addr v6, v4

    .line 72
    .local v6, "numChannels":I
    shr-int/lit8 v7, v5, 0x3

    and-int/lit8 v7, v7, 0xf

    .line 73
    .local v7, "audioFormat":I
    if-ne v7, v4, :cond_2

    .line 74
    invoke-static {v6}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v2    # "audioDescriptor":Landroid/media/AudioDescriptor;
    .end local v3    # "data":[B
    .end local v5    # "firstByte":B
    .end local v6    # "numChannels":I
    .end local v7    # "audioFormat":I
    :cond_2
    goto :goto_0

    .line 78
    :cond_3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 56
    .end local v0    # "channelMasks":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static getChannelMaskFromSadb([B)I
    .locals 5
    .param p0, "data"    # [B

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_13

    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 136
    .local v0, "channelMask":I
    aget-byte v1, p0, v2

    .line 139
    .local v1, "byte1":B
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 140
    or-int/lit8 v0, v0, 0xc

    .line 143
    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    .line 144
    or-int/lit8 v0, v0, 0x20

    .line 147
    :cond_2
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    .line 148
    or-int/lit8 v0, v0, 0x10

    .line 151
    :cond_3
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_4

    .line 152
    or-int/lit16 v0, v0, 0xc0

    .line 155
    :cond_4
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_5

    .line 156
    or-int/lit16 v0, v0, 0x400

    .line 159
    :cond_5
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_6

    .line 160
    or-int/lit16 v0, v0, 0x300

    .line 168
    :cond_6
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    .line 169
    const/high16 v2, 0xc000000

    or-int/2addr v0, v2

    .line 173
    :cond_7
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    .line 176
    .local v2, "byte2":B
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_8

    .line 177
    const v3, 0x14000

    or-int/2addr v0, v3

    .line 181
    :cond_8
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_9

    .line 182
    or-int/lit16 v0, v0, 0x2000

    .line 185
    :cond_9
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_a

    .line 186
    const v3, 0x8000

    or-int/2addr v0, v3

    .line 189
    :cond_a
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_b

    .line 190
    or-int/lit16 v0, v0, 0x1800

    .line 193
    :cond_b
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_c

    .line 194
    const/high16 v3, 0x2000000

    or-int/2addr v0, v3

    .line 197
    :cond_c
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_d

    .line 198
    const/high16 v3, 0x40000

    or-int/2addr v0, v3

    .line 201
    :cond_d
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_e

    .line 203
    or-int/lit16 v0, v0, 0x1800

    .line 206
    :cond_e
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_f

    .line 207
    const/high16 v3, 0x300000

    or-int/2addr v0, v3

    .line 210
    :cond_f
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    .line 213
    .local v3, "byte3":B
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_10

    .line 214
    const/high16 v4, 0xa0000

    or-int/2addr v0, v4

    .line 217
    :cond_10
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_11

    .line 218
    const/high16 v4, 0x800000

    or-int/2addr v0, v4

    .line 221
    :cond_11
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_12

    .line 222
    const/high16 v4, 0x1400000

    or-int/2addr v0, v4

    .line 227
    :cond_12
    return v0

    .line 133
    .end local v0    # "channelMask":I
    .end local v1    # "byte1":B
    .end local v2    # "byte2":B
    .end local v3    # "byte3":B
    :cond_13
    :goto_0
    return v2
.end method

.method static synthetic lambda$getAllChannelMasksFromSadbs$0(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2
    .param p0, "a"    # Ljava/lang/Integer;
    .param p1, "b"    # Ljava/lang/Integer;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
