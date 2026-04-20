.class public interface abstract Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioOffloadListener"
.end annotation


# virtual methods
.method public onOffloadedPlayback(Z)V
    .locals 0
    .param p1, "isOffloadedPlayback"    # Z

    .line 187
    return-void
.end method

.method public onSleepingForOffloadChanged(Z)V
    .locals 0
    .param p1, "isSleepingForOffload"    # Z

    .line 179
    return-void
.end method
