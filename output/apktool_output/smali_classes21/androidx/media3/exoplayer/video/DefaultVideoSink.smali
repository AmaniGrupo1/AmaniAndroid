.class final Landroidx/media3/exoplayer/video/DefaultVideoSink;
.super Ljava/lang/Object;
.source "DefaultVideoSink.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;
    }
.end annotation


# instance fields
.field private inputFormat:Landroidx/media3/common/Format;

.field private listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

.field private listenerExecutor:Ljava/util/concurrent/Executor;

.field private outputSurface:Landroid/view/Surface;

.field private streamStartPositionUs:J

.field private final videoFrameHandlers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;",
            ">;"
        }
    .end annotation
.end field

.field private videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field private final videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field private final videoFrameReleaseEarlyTimeForecaster:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

.field private final videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;Landroidx/media3/common/util/Clock;)V
    .locals 3
    .param p1, "videoFrameReleaseControl"    # Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
    .param p2, "videoFrameReleaseEarlyTimeForecaster"    # Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;
    .param p3, "clock"    # Landroidx/media3/common/util/Clock;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 74
    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseEarlyTimeForecaster:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 75
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setClock(Landroidx/media3/common/util/Clock;)V

    .line 76
    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    new-instance v1, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink;Landroidx/media3/exoplayer/video/DefaultVideoSink$1;)V

    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;-><init>(Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 81
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/Queue;

    .line 82
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Landroidx/media3/common/Format;

    .line 83
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->streamStartPositionUs:J

    .line 84
    sget-object v0, Landroidx/media3/exoplayer/video/VideoSink$Listener;->NO_OP:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 85
    new-instance v0, Landroidx/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    .line 86
    new-instance v0, Landroidx/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 87
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 55
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 55
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->outputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 55
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 55
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/exoplayer/video/VideoSink$Listener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 55
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 85
    return-void
.end method

.method static synthetic lambda$new$1(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 0
    .param p0, "presentationTimeUs"    # J
    .param p2, "releaseTimeNs"    # J
    .param p4, "format"    # Landroidx/media3/common/Format;
    .param p5, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 86
    return-void
.end method


# virtual methods
.method public allowReleaseFirstFrameBeforeStarted()V
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowReleaseFirstFrameBeforeStarted()V

    .line 239
    return-void
.end method

.method public clearOutputSurfaceInfo()V
    .locals 2

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->outputSurface:Landroid/view/Surface;

    .line 202
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setOutputSurface(Landroid/view/Surface;)V

    .line 203
    return-void
.end method

.method public flush(Z)V
    .locals 1
    .param p1, "resetPosition"    # Z

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->reset()V

    .line 133
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseEarlyTimeForecaster:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->reset()V

    .line 134
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->flush()V

    .line 135
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 136
    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 160
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->outputSurface:Landroid/view/Surface;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method public handleInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z
    .locals 1
    .param p1, "inputBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bufferTimestampIterator"    # Landroidx/media3/common/util/TimestampIterator;

    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleInputFrame(JLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
    .locals 2
    .param p1, "framePresentationTimeUs"    # J
    .param p3, "videoFrameHandler"    # Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    .line 244
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/Queue;

    invoke-interface {v0, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->onFrameAvailableForRendering(J)V

    .line 246
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Landroidx/media3/common/Format;)Z
    .locals 1
    .param p1, "sourceFormat"    # Landroidx/media3/common/Format;

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->isEnded()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public isReady(Z)Z
    .locals 1
    .param p1, "otherwiseReady"    # Z

    .line 140
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->isReady(Z)Z

    move-result v0

    return v0
.end method

.method public join(Z)V
    .locals 1
    .param p1, "renderNextFrameImmediately"    # Z

    .line 271
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->join(Z)V

    .line 272
    return-void
.end method

.method synthetic lambda$handleInputFrame$2$androidx-media3-exoplayer-video-DefaultVideoSink()V
    .locals 1

    .line 246
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onFrameAvailableForRendering()V

    return-void
.end method

.method public onInputStreamChanged(ILandroidx/media3/common/Format;JILjava/util/List;)V
    .locals 3
    .param p1, "inputType"    # I
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p3, "startPositionUs"    # J
    .param p5, "firstFrameReleaseInstruction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "JI",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p6, "videoEffects":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Effect;>;"
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 223
    iget v0, p2, Landroidx/media3/common/Format;->width:I

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroidx/media3/common/Format;->height:I

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->height:I

    if-eq v0, v1, :cond_1

    .line 224
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    iget v1, p2, Landroidx/media3/common/Format;->width:I

    iget v2, p2, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->onVideoSizeChanged(II)V

    .line 226
    :cond_1
    iget v0, p2, Landroidx/media3/common/Format;->frameRate:F

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget v1, p2, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setFrameRate(F)V

    .line 229
    :cond_2
    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Landroidx/media3/common/Format;

    .line 230
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->streamStartPositionUs:J

    cmp-long v0, p3, v0

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p5, p3, p4}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->onStreamChanged(IJ)V

    .line 232
    iput-wide p3, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->streamStartPositionUs:J

    .line 234
    :cond_3
    return-void
.end method

.method public redraw()V
    .locals 1

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public release()V
    .locals 0

    .line 275
    return-void
.end method

.method public render(JJ)V
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 263
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->render(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    nop

    .line 267
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    new-instance v1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Landroidx/media3/common/Format;

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw v1
.end method

.method public setBufferTimestampAdjustmentUs(J)V
    .locals 1
    .param p1, "bufferTimestampAdjustmentUs"    # J

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1
    .param p1, "changeFrameRateStrategy"    # I

    .line 207
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setChangeFrameRateStrategy(I)V

    .line 208
    return-void
.end method

.method public setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media3/exoplayer/video/VideoSink$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 103
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 104
    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    .line 105
    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 1
    .param p1, "outputSurface"    # Landroid/view/Surface;
    .param p2, "outputResolution"    # Landroidx/media3/common/util/Size;

    .line 195
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->outputSurface:Landroid/view/Surface;

    .line 196
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setOutputSurface(Landroid/view/Surface;)V

    .line 197
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 170
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setPlaybackSpeed(F)V

    .line 171
    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "videoEffects":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Effect;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0
    .param p1, "videoFrameMetadataListener"    # Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 165
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 166
    return-void
.end method

.method public signalEndOfCurrentInputStream()V
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->signalEndOfInput()V

    .line 146
    return-void
.end method

.method public signalEndOfInput()V
    .locals 0

    .line 151
    return-void
.end method

.method public startRendering()V
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseEarlyTimeForecaster:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->reset()V

    .line 92
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onStarted()V

    .line 93
    return-void
.end method

.method public stopRendering()V
    .locals 1

    .line 97
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseEarlyTimeForecaster:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->reset()V

    .line 98
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onStopped()V

    .line 99
    return-void
.end method
