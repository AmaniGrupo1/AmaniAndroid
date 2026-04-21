.class public final Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;
.super Ljava/lang/Object;
.source "DefaultAudioOffloadSupportProvider.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;


# static fields
.field private static final OFFLOAD_VARIABLE_RATE_SUPPORTED_KEY:Ljava/lang/String; = "offloadVariableRateSupported"


# instance fields
.field private final context:Landroid/content/Context;

.field private isOffloadVariableRateSupported:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->context:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private static getOffloadedPlaybackSupportV29(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 2
    .param p0, "audioFormat"    # Landroid/media/AudioFormat;
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p2, "isOffloadVariableRateSupported"    # Z

    .line 143
    invoke-static {p0, p1}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object v0

    .line 146
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;-><init>()V

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsFormatSupported(Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsSpeedChangeSupported(Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->build()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v0

    .line 146
    return-object v0
.end method

.method private static getOffloadedPlaybackSupportV31(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 5
    .param p0, "audioFormat"    # Landroid/media/AudioFormat;
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p2, "isOffloadVariableRateSupported"    # Z

    .line 157
    nop

    .line 158
    invoke-static {p0, p1}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    .line 159
    .local v0, "playbackOffloadSupport":I
    if-nez v0, :cond_0

    .line 160
    sget-object v1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object v1

    .line 162
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;-><init>()V

    .line 165
    .local v1, "audioOffloadSupport":Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-le v2, v3, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 167
    .local v2, "isGaplessSupported":Z
    :goto_0
    nop

    .line 168
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsFormatSupported(Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object v3

    .line 169
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsGaplessSupported(Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object v3

    .line 170
    invoke-virtual {v3, p2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsSpeedChangeSupported(Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object v3

    .line 171
    invoke-virtual {v3}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->build()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v3

    .line 167
    return-object v3
.end method

.method private static getOffloadedPlaybackSupportV33(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 4
    .param p0, "audioFormat"    # Landroid/media/AudioFormat;
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p2, "isOffloadVariableRateSupported"    # Z

    .line 179
    invoke-static {p0, p1}, Landroid/media/AudioManager;->getDirectPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    .line 180
    .local v0, "directSupport":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 181
    sget-object v1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object v1

    .line 183
    :cond_0
    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 186
    .local v1, "isGaplessSupported":Z
    :goto_0
    new-instance v2, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;-><init>()V

    .line 187
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsFormatSupported(Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object v2

    .line 188
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsGaplessSupported(Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object v2

    .line 189
    invoke-virtual {v2, p2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsSpeedChangeSupported(Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->build()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v2

    .line 186
    return-object v2
.end method

.method private isOffloadVariableRateSupported(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->isOffloadVariableRateSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->isOffloadVariableRateSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 125
    invoke-static {p1}, Landroidx/media3/common/audio/AudioManagerCompat;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    .line 126
    .local v1, "audioManager":Landroid/media/AudioManager;
    nop

    .line 127
    const-string/jumbo v2, "offloadVariableRateSupported"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "offloadVariableRateSupportedKeyValue":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 130
    const-string/jumbo v3, "offloadVariableRateSupported=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 129
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->isOffloadVariableRateSupported:Ljava/lang/Boolean;

    .line 132
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "offloadVariableRateSupportedKeyValue":Ljava/lang/String;
    goto :goto_1

    .line 133
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->isOffloadVariableRateSupported:Ljava/lang/Boolean;

    .line 135
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->isOffloadVariableRateSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAudioOffloadSupport(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 6
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 72
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_6

    iget v0, p1, Landroidx/media3/common/Format;->sampleRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->isOffloadVariableRateSupported(Landroid/content/Context;)Z

    move-result v0

    .line 84
    .local v0, "isOffloadVariableRateSupported":Z
    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/media3/common/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "encoding":I
    if-eqz v1, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    invoke-static {v1}, Landroidx/media3/common/util/Util;->getApiLevelThatAudioFormatIntroducedAudioEncoding(I)I

    move-result v3

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    iget v2, p1, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v2}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v2

    .line 92
    .local v2, "channelConfig":I
    if-nez v2, :cond_2

    .line 93
    sget-object v3, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object v3

    .line 98
    :cond_2
    :try_start_0
    iget v3, p1, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/Util;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v3, "audioFormat":Landroid/media/AudioFormat;
    nop

    .line 103
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_3

    .line 104
    nop

    .line 106
    invoke-virtual {p2}, Landroidx/media3/common/AudioAttributes;->getPlatformAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 104
    invoke-static {v3, v4, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->getOffloadedPlaybackSupportV33(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v4

    return-object v4

    .line 109
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_4

    .line 110
    nop

    .line 112
    invoke-virtual {p2}, Landroidx/media3/common/AudioAttributes;->getPlatformAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 110
    invoke-static {v3, v4, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->getOffloadedPlaybackSupportV31(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v4

    return-object v4

    .line 115
    :cond_4
    nop

    .line 116
    invoke-virtual {p2}, Landroidx/media3/common/AudioAttributes;->getPlatformAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 115
    invoke-static {v3, v4, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->getOffloadedPlaybackSupportV29(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v4

    return-object v4

    .line 99
    .end local v3    # "audioFormat":Landroid/media/AudioFormat;
    :catch_0
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object v4

    .line 88
    .end local v2    # "channelConfig":I
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    :goto_0
    sget-object v2, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object v2

    .line 76
    .end local v0    # "isOffloadVariableRateSupported":Z
    .end local v1    # "encoding":I
    :cond_6
    :goto_1
    sget-object v0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object v0
.end method
