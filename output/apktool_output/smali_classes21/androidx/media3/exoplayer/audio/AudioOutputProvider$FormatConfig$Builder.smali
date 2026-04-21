.class public final Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
.super Ljava/lang/Object;
.source "AudioOutputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private audioSessionId:I

.field private enableHighResolutionPcmOutput:Z

.field private enableOffload:Z

.field private enablePlaybackParameters:Z

.field private enableTunneling:Z

.field private final format:Landroidx/media3/common/Format;

.field private preferredBufferSize:I

.field private preferredDevice:Landroid/media/AudioDeviceInfo;

.field private virtualDeviceId:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;)V
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->format:Landroidx/media3/common/Format;

    .line 145
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->audioSessionId:I

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->virtualDeviceId:I

    .line 148
    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->preferredBufferSize:I

    .line 149
    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)V
    .locals 1
    .param p1, "config"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->format:Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->format:Landroidx/media3/common/Format;

    .line 153
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 154
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->preferredDevice:Landroid/media/AudioDeviceInfo;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->preferredDevice:Landroid/media/AudioDeviceInfo;

    .line 155
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->enableHighResolutionPcmOutput:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enableHighResolutionPcmOutput:Z

    .line 156
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->enablePlaybackParameters:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enablePlaybackParameters:Z

    .line 157
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->enableOffload:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enableOffload:Z

    .line 158
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->audioSessionId:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->audioSessionId:I

    .line 159
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->virtualDeviceId:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->virtualDeviceId:I

    .line 160
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->enableTunneling:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enableTunneling:Z

    .line 161
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->preferredBufferSize:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->preferredBufferSize:I

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;Landroidx/media3/exoplayer/audio/AudioOutputProvider$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;
    .param p2, "x1"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$1;

    .line 130
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)Landroidx/media3/common/Format;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->format:Landroidx/media3/common/Format;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)Landroidx/media3/common/AudioAttributes;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)Landroid/media/AudioDeviceInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->preferredDevice:Landroid/media/AudioDeviceInfo;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    .line 130
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enableHighResolutionPcmOutput:Z

    return v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    .line 130
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enablePlaybackParameters:Z

    return v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    .line 130
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enableOffload:Z

    return v0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    .line 130
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->audioSessionId:I

    return v0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    .line 130
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->virtualDeviceId:I

    return v0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    .line 130
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enableTunneling:Z

    return v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    .line 130
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->preferredBufferSize:I

    return v0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;
    .locals 2

    .line 262
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;Landroidx/media3/exoplayer/audio/AudioOutputProvider$1;)V

    return-object v0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
    .locals 0
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 167
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 168
    return-object p0
.end method

.method public setAudioSessionId(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
    .locals 0
    .param p1, "audioSessionId"    # I

    .line 218
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->audioSessionId:I

    .line 219
    return-object p0
.end method

.method public setEnableHighResolutionPcmOutput(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
    .locals 0
    .param p1, "enableHighResolutionPcmOutput"    # Z

    .line 181
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enableHighResolutionPcmOutput:Z

    .line 182
    return-object p0
.end method

.method public setEnableOffload(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
    .locals 0
    .param p1, "enableOffload"    # Z

    .line 206
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enableOffload:Z

    .line 207
    return-object p0
.end method

.method public setEnablePlaybackParameters(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
    .locals 0
    .param p1, "enablePlaybackParameters"    # Z

    .line 194
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enablePlaybackParameters:Z

    .line 195
    return-object p0
.end method

.method public setEnableTunneling(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
    .locals 0
    .param p1, "enableTunneling"    # Z

    .line 243
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->enableTunneling:Z

    .line 244
    return-object p0
.end method

.method public setPreferredBufferSize(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
    .locals 0
    .param p1, "preferredBufferSize"    # I

    .line 256
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->preferredBufferSize:I

    .line 257
    return-object p0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
    .locals 0
    .param p1, "preferredDevice"    # Landroid/media/AudioDeviceInfo;

    .line 174
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->preferredDevice:Landroid/media/AudioDeviceInfo;

    .line 175
    return-object p0
.end method

.method public setVirtualDeviceId(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
    .locals 0
    .param p1, "virtualDeviceId"    # I

    .line 231
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->virtualDeviceId:I

    .line 232
    return-object p0
.end method
