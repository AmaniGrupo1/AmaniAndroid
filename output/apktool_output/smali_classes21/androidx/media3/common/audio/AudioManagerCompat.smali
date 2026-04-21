.class public final Landroidx/media3/common/audio/AudioManagerCompat;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/AudioManagerCompat$AudioFocusGain;
    }
.end annotation


# static fields
.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioManagerCompat"

.field private static applicationContext:Landroid/content/Context;

.field private static audioManager:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abandonAudioFocusRequest(Landroid/media/AudioManager;Landroidx/media3/common/audio/AudioFocusRequestCompat;)I
    .locals 2
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "focusRequest"    # Landroidx/media3/common/audio/AudioFocusRequestCompat;

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->getAudioFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroidx/media3/common/audio/AudioManagerCompat;

    monitor-enter v0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 115
    .local v1, "applicationContext":Landroid/content/Context;
    sget-object v2, Landroidx/media3/common/audio/AudioManagerCompat;->applicationContext:Landroid/content/Context;

    if-eq v2, v1, :cond_0

    .line 117
    const/4 v2, 0x0

    sput-object v2, Landroidx/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;

    .line 119
    :cond_0
    sget-object v2, Landroidx/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 120
    sget-object v2, Landroidx/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 122
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 123
    .local v2, "myLooper":Landroid/os/Looper;
    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    new-instance v3, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v3}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    .line 133
    .local v3, "audioManagerSetCondition":Landroidx/media3/common/util/ConditionVariable;
    invoke-static {}, Landroidx/media3/common/util/BackgroundExecutor;->get()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Landroidx/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v3}, Landroidx/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroidx/media3/common/util/ConditionVariable;)V

    .line 134
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 140
    invoke-virtual {v3}, Landroidx/media3/common/util/ConditionVariable;->blockUninterruptible()V

    .line 141
    sget-object v4, Landroidx/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v4

    .line 126
    .end local v3    # "audioManagerSetCondition":Landroidx/media3/common/util/ConditionVariable;
    :cond_3
    :goto_0
    :try_start_2
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    sput-object v3, Landroidx/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;

    .line 127
    sget-object v3, Landroidx/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v3

    .line 113
    .end local v1    # "applicationContext":Landroid/content/Context;
    .end local v2    # "myLooper":Landroid/os/Looper;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static getStreamMaxVolume(Landroid/media/AudioManager;I)I
    .locals 1
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "streamType"    # I

    .line 196
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public static getStreamMinVolume(Landroid/media/AudioManager;I)I
    .locals 2
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "streamType"    # I

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getStreamVolume(Landroid/media/AudioManager;I)I
    .locals 3
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "streamType"    # I

    .line 222
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioManagerCompat"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    return v1
.end method

.method public static isStreamMute(Landroid/media/AudioManager;I)Z
    .locals 1
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "streamType"    # I

    .line 237
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getAudioManager$0(Landroid/content/Context;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "audioManagerSetCondition"    # Landroidx/media3/common/util/ConditionVariable;

    .line 136
    nop

    .line 137
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Landroidx/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;

    .line 138
    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    .line 139
    return-void
.end method

.method public static requestAudioFocus(Landroid/media/AudioManager;Landroidx/media3/common/audio/AudioFocusRequestCompat;)I
    .locals 3
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "focusRequest"    # Landroidx/media3/common/audio/AudioFocusRequestCompat;

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->getAudioFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0

    .line 161
    :cond_0
    nop

    .line 162
    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/AudioAttributes;->getVolumeControlStream()I

    move-result v1

    .line 164
    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->getFocusGain()I

    move-result v2

    .line 161
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method
