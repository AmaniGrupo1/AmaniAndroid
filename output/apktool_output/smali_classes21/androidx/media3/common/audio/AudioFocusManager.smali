.class public final Landroidx/media3/common/audio/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;,
        Landroidx/media3/common/audio/AudioFocusManager$PlayerCommand;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUS_STATE_HAVE_FOCUS:I = 0x2

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I = 0x3

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK:I = 0x4

.field private static final AUDIO_FOCUS_STATE_NOT_REQUESTED:I = 0x0

.field private static final AUDIO_FOCUS_STATE_NO_FOCUS:I = 0x1

.field public static final PLAYER_COMMAND_DO_NOT_PLAY:I = -0x1

.field public static final PLAYER_COMMAND_PLAY_WHEN_READY:I = 0x1

.field public static final PLAYER_COMMAND_WAIT_FOR_CALLBACK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioFocusManager"

.field private static final VOLUME_MULTIPLIER_DEFAULT:F = 1.0f

.field private static final VOLUME_MULTIPLIER_DUCK:F = 0.2f


# instance fields
.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

.field private audioFocusState:I

.field private final audioManager:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Landroid/os/Handler;

.field private focusGainToRequest:I

.field private playerControl:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

.field private rebuildAudioFocusRequest:Z

.field private volumeMultiplier:F


# direct methods
.method public static synthetic $r8$lambda$K-Cg37zmwP_RajgD4dsHtFvSy9M(Landroidx/media3/common/audio/AudioFocusManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioFocusManager;->handlePlatformAudioFocusChange(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventLooper"    # Landroid/os/Looper;
    .param p3, "playerControl"    # Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->volumeMultiplier:F

    .line 153
    new-instance v0, Landroidx/media3/common/audio/AudioFocusManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroidx/media3/common/audio/AudioFocusManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    .line 154
    iput-object p3, p0, Landroidx/media3/common/audio/AudioFocusManager;->playerControl:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->eventHandler:Landroid/os/Handler;

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusState:I

    .line 157
    return-void
.end method

.method private abandonAudioFocusIfHeld()V
    .locals 2

    .line 247
    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    invoke-static {v0, v1}, Landroidx/media3/common/audio/AudioManagerCompat;->abandonAudioFocusRequest(Landroid/media/AudioManager;Landroidx/media3/common/audio/AudioFocusRequestCompat;)I

    .line 254
    :cond_1
    return-void

    .line 249
    :cond_2
    :goto_0
    return-void
.end method

.method private static convertAudioAttributesToFocusGain(Landroidx/media3/common/AudioAttributes;)I
    .locals 6
    .param p0, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 291
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 294
    return v0

    .line 297
    :cond_0
    iget v1, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "AudioFocusManager"

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 351
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified audio usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return v0

    .line 341
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 345
    :pswitch_2
    iget v0, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    if-ne v0, v5, :cond_1

    .line 347
    return v3

    .line 349
    :cond_1
    return v2

    .line 335
    :pswitch_3
    return v2

    .line 302
    :pswitch_4
    return v0

    .line 323
    :pswitch_5
    return v3

    .line 308
    :pswitch_6
    return v5

    .line 313
    :pswitch_7
    const-string v0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executePlayerCommand(I)V
    .locals 1
    .param p1, "playerCommand"    # I

    .line 401
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->playerControl:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->playerControl:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    invoke-interface {v0, p1}, Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    .line 404
    :cond_0
    return-void
.end method

.method private handlePlatformAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .line 376
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 396
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusManager"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void

    .line 378
    :pswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroidx/media3/common/audio/AudioFocusManager;->setAudioFocusState(I)V

    .line 379
    invoke-direct {p0, v0}, Landroidx/media3/common/audio/AudioFocusManager;->executePlayerCommand(I)V

    .line 380
    return-void

    .line 382
    :pswitch_2
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroidx/media3/common/audio/AudioFocusManager;->executePlayerCommand(I)V

    .line 383
    invoke-direct {p0}, Landroidx/media3/common/audio/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 384
    invoke-direct {p0, v0}, Landroidx/media3/common/audio/AudioFocusManager;->setAudioFocusState(I)V

    .line 385
    return-void

    .line 388
    :pswitch_3
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/common/audio/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/common/audio/AudioFocusManager;->setAudioFocusState(I)V

    goto :goto_1

    .line 389
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/common/audio/AudioFocusManager;->executePlayerCommand(I)V

    .line 390
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/media3/common/audio/AudioFocusManager;->setAudioFocusState(I)V

    .line 394
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 153
    invoke-static {p0}, Landroidx/media3/common/audio/AudioManagerCompat;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method private requestAudioFocus()I
    .locals 3

    .line 232
    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 233
    return v1

    .line 235
    :cond_0
    invoke-direct {p0}, Landroidx/media3/common/audio/AudioFocusManager;->requestAudioFocusInternal()I

    move-result v0

    .line 236
    .local v0, "requestResult":I
    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/AudioFocusManager;->setAudioFocusState(I)V

    .line 242
    const/4 v1, -0x1

    return v1

    .line 238
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Landroidx/media3/common/audio/AudioFocusManager;->setAudioFocusState(I)V

    .line 239
    return v1
.end method

.method private requestAudioFocusInternal()I
    .locals 5

    .line 257
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->rebuildAudioFocusRequest:Z

    if-eqz v0, :cond_2

    .line 259
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    if-nez v0, :cond_1

    .line 260
    new-instance v0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;

    iget v1, p0, Landroidx/media3/common/audio/AudioFocusManager;->focusGainToRequest:I

    invoke-direct {v0, v1}, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;-><init>(I)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->buildUpon()Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;

    move-result-object v0

    :goto_0
    nop

    .line 263
    .local v0, "builder":Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;
    invoke-direct {p0}, Landroidx/media3/common/audio/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v1

    .line 264
    .local v1, "willPauseWhenDucked":Z
    iget-object v2, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 266
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, v2}, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;

    move-result-object v2

    .line 267
    invoke-virtual {v2, v1}, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->setWillPauseWhenDucked(Z)Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;

    move-result-object v2

    .line 268
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->setAcceptsDelayedFocusGain(Z)Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/audio/AudioFocusManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroidx/media3/common/audio/AudioFocusManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/common/audio/AudioFocusManager;)V

    iget-object v4, p0, Landroidx/media3/common/audio/AudioFocusManager;->eventHandler:Landroid/os/Handler;

    .line 269
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->build()Landroidx/media3/common/audio/AudioFocusRequestCompat;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    .line 272
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/common/audio/AudioFocusManager;->rebuildAudioFocusRequest:Z

    .line 274
    .end local v0    # "builder":Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;
    .end local v1    # "willPauseWhenDucked":Z
    :cond_2
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    invoke-static {v0, v1}, Landroidx/media3/common/audio/AudioManagerCompat;->requestAudioFocus(Landroid/media/AudioManager;Landroidx/media3/common/audio/AudioFocusRequestCompat;)I

    move-result v0

    return v0
.end method

.method private setAudioFocusState(I)V
    .locals 2
    .param p1, "audioFocusState"    # I

    .line 357
    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusState:I

    if-ne v0, p1, :cond_0

    .line 358
    return-void

    .line 360
    :cond_0
    iput p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusState:I

    .line 363
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 364
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    .line 365
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    nop

    .line 366
    .local v0, "volumeMultiplier":F
    iget v1, p0, Landroidx/media3/common/audio/AudioFocusManager;->volumeMultiplier:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    .line 367
    return-void

    .line 369
    :cond_2
    iput v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->volumeMultiplier:F

    .line 370
    iget-object v1, p0, Landroidx/media3/common/audio/AudioFocusManager;->playerControl:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    if-eqz v1, :cond_3

    .line 371
    iget-object v1, p0, Landroidx/media3/common/audio/AudioFocusManager;->playerControl:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    invoke-interface {v1, v0}, Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;->setVolumeMultiplier(F)V

    .line 373
    :cond_3
    return-void
.end method

.method private shouldHandleAudioFocus(I)Z
    .locals 2
    .param p1, "playbackState"    # I

    .line 228
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget v1, p0, Landroidx/media3/common/audio/AudioFocusManager;->focusGainToRequest:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private willPauseWhenDucked()Z
    .locals 2

    .line 278
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget v0, v0, Landroidx/media3/common/AudioAttributes;->contentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method getFocusListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .line 224
    new-instance v0, Landroidx/media3/common/audio/AudioFocusManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/common/audio/AudioFocusManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/common/audio/AudioFocusManager;)V

    return-object v0
.end method

.method public getVolumeMultiplier()F
    .locals 1

    .line 161
    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->volumeMultiplier:F

    return v0
.end method

.method public release()V
    .locals 1

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->playerControl:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    .line 216
    invoke-direct {p0}, Landroidx/media3/common/audio/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/common/audio/AudioFocusManager;->setAudioFocusState(I)V

    .line 218
    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .locals 2
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 174
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iput-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 176
    invoke-static {p1}, Landroidx/media3/common/audio/AudioFocusManager;->convertAudioAttributesToFocusGain(Landroidx/media3/common/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->focusGainToRequest:I

    .line 177
    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->focusGainToRequest:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->focusGainToRequest:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 181
    :cond_2
    return-void
.end method

.method public updateAudioFocus(ZI)I
    .locals 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 192
    invoke-direct {p0, p2}, Landroidx/media3/common/audio/AudioFocusManager;->shouldHandleAudioFocus(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Landroidx/media3/common/audio/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 194
    invoke-direct {p0, v2}, Landroidx/media3/common/audio/AudioFocusManager;->setAudioFocusState(I)V

    .line 195
    return v1

    .line 197
    :cond_0
    if-eqz p1, :cond_1

    .line 198
    invoke-direct {p0}, Landroidx/media3/common/audio/AudioFocusManager;->requestAudioFocus()I

    move-result v0

    return v0

    .line 200
    :cond_1
    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->audioFocusState:I

    packed-switch v0, :pswitch_data_0

    .line 206
    :pswitch_0
    return v1

    .line 204
    :pswitch_1
    return v2

    .line 202
    :pswitch_2
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
