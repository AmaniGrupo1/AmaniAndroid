.class final Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;
.super Ljava/lang/Object;
.source "AudioTrackAudioOutput.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PositionTrackerListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 520
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;->this$0:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;
    .param p2, "x1"    # Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$1;

    .line 520
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;)V

    return-void
.end method

.method static synthetic lambda$onPositionAdvancing$0(JLandroidx/media3/exoplayer/audio/AudioOutput$Listener;)V
    .locals 0
    .param p0, "playoutStartSystemTimeMs"    # J
    .param p2, "listener"    # Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    .line 578
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;->onPositionAdvancing(J)V

    return-void
.end method


# virtual methods
.method public onInvalidLatency(J)V
    .locals 2
    .param p1, "latencyUs"    # J

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioTrackAudioOutput"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 2
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 577
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;->this$0:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->access$700(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;)Landroidx/media3/common/util/ListenerSet;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->isRunningOnCorrectThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;->this$0:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->access$700(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;)Landroidx/media3/common/util/ListenerSet;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(Landroidx/media3/common/util/ListenerSet$Event;)V

    .line 580
    :cond_0
    return-void
.end method

.method public onPositionFramesMismatch(JJJJ)V
    .locals 3
    .param p1, "audioTimestampPositionFrames"    # J
    .param p3, "audioTimestampSystemTimeUs"    # J
    .param p5, "systemTimeUs"    # J
    .param p7, "playbackPositionUs"    # J

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;->this$0:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 538
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->access$500(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "message":Ljava/lang/String;
    sget-boolean v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->failOnSpuriousAudioTimestamp:Z

    if-nez v1, :cond_0

    .line 543
    const-string v1, "AudioTrackAudioOutput"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void

    .line 541
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$InvalidAudioTrackTimestampException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$1;)V

    throw v1
.end method

.method public onSystemTimeUsMismatch(JJJJ)V
    .locals 3
    .param p1, "audioTimestampPositionFrames"    # J
    .param p3, "audioTimestampSystemTimeUs"    # J
    .param p5, "systemTimeUs"    # J
    .param p7, "playbackPositionUs"    # J

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;->this$0:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 562
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->access$500(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "message":Ljava/lang/String;
    sget-boolean v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->failOnSpuriousAudioTimestamp:Z

    if-nez v1, :cond_0

    .line 567
    const-string v1, "AudioTrackAudioOutput"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void

    .line 565
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$InvalidAudioTrackTimestampException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$1;)V

    throw v1
.end method
