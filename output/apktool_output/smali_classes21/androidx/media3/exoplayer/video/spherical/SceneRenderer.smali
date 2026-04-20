.class final Landroidx/media3/exoplayer/video/spherical/SceneRenderer;
.super Ljava/lang/Object;
.source "SceneRenderer.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;
.implements Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneRenderer"


# instance fields
.field private volatile defaultStereoMode:I

.field private final frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final frameRotationQueue:Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;

.field private lastProjectionData:[B

.field private lastStereoMode:I

.field private final projectionQueue:Landroidx/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/TimedValueQueue<",
            "Landroidx/media3/exoplayer/video/spherical/Projection;",
            ">;"
        }
    .end annotation
.end field

.field private final projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

.field private final resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final rotationMatrix:[F

.field private final sampleTimestampQueue:Landroidx/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/TimedValueQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final tempMatrix:[F

.field private textureId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    .line 66
    new-instance v0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;

    .line 67
    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 68
    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 69
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    .line 70
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->tempMatrix:[F

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->defaultStereoMode:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    .line 73
    return-void
.end method

.method private setProjection([BIJ)V
    .locals 5
    .param p1, "projectionData"    # [B
    .param p2, "stereoMode"    # I
    .param p3, "timeNs"    # J

    .line 190
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    .line 191
    .local v0, "oldProjectionData":[B
    iget v1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    .line 192
    .local v1, "oldStereoMode":I
    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    .line 193
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    iget v2, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->defaultStereoMode:I

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    iput v2, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    .line 194
    iget v2, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    return-void

    .line 198
    :cond_1
    const/4 v2, 0x0

    .line 199
    .local v2, "projectionFromData":Landroidx/media3/exoplayer/video/spherical/Projection;
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    if-eqz v3, :cond_2

    .line 200
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    iget v4, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    invoke-static {v3, v4}, Landroidx/media3/exoplayer/video/spherical/ProjectionDecoder;->decode([BI)Landroidx/media3/exoplayer/video/spherical/Projection;

    move-result-object v2

    .line 203
    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->isSupported(Landroidx/media3/exoplayer/video/spherical/Projection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    move-object v3, v2

    goto :goto_1

    .line 205
    :cond_3
    iget v3, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    invoke-static {v3}, Landroidx/media3/exoplayer/video/spherical/Projection;->createEquirectangular(I)Landroidx/media3/exoplayer/video/spherical/Projection;

    move-result-object v3

    :goto_1
    nop

    .line 206
    .local v3, "projection":Landroidx/media3/exoplayer/video/spherical/Projection;
    iget-object v4, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v4, p3, p4, v3}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 207
    return-void
.end method


# virtual methods
.method public drawFrame([FZ)V
    .locals 11
    .param p1, "viewProjectionMatrix"    # [F
    .param p2, "rightEye"    # Z

    .line 117
    const-string v1, "Failed to draw a frame"

    const-string v2, "SceneRenderer"

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 119
    :try_start_0
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroidx/media3/common/util/GlUtil$GlException;
    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 127
    :try_start_1
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    goto :goto_1

    .line 128
    :catch_1
    move-exception v0

    .line 129
    .restart local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    .line 134
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 135
    .local v0, "lastFrameTimestampNs":J
    iget-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/TimedValueQueue;->poll(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 136
    .local v2, "sampleTimestampUs":Ljava/lang/Long;
    if-eqz v2, :cond_1

    .line 137
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;

    iget-object v4, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->pollRotationMatrix([FJ)Z

    .line 139
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v3, v0, v1}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/video/spherical/Projection;

    .line 140
    .local v3, "projection":Landroidx/media3/exoplayer/video/spherical/Projection;
    if-eqz v3, :cond_2

    .line 141
    iget-object v4, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->setProjection(Landroidx/media3/exoplayer/video/spherical/Projection;)V

    .line 144
    .end local v0    # "lastFrameTimestampNs":J
    .end local v2    # "sampleTimestampUs":Ljava/lang/Long;
    .end local v3    # "projection":Landroidx/media3/exoplayer/video/spherical/Projection;
    :cond_2
    iget-object v5, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->tempMatrix:[F

    iget-object v9, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    .end local p1    # "viewProjectionMatrix":[F
    .local v7, "viewProjectionMatrix":[F
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 145
    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    iget v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->textureId:I

    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->tempMatrix:[F

    invoke-virtual {p1, v0, v1, p2}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->draw(I[FZ)V

    .line 146
    return-void
.end method

.method public init()Landroid/graphics/SurfaceTexture;
    .locals 3

    .line 92
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    :try_start_0
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 93
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 95
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->init()V

    .line 96
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 98
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->createExternalTexture()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->textureId:I
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroidx/media3/common/util/GlUtil$GlException;
    const-string v1, "SceneRenderer"

    const-string v2, "Failed to initialize the renderer"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :goto_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->textureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 103
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Landroidx/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/video/spherical/SceneRenderer;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 104
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method synthetic lambda$init$0$androidx-media3-exoplayer-video-spherical-SceneRenderer(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 103
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onCameraMotion(J[F)V
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "rotation"    # [F

    .line 171
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->setRotation(J[F)V

    .line 172
    return-void
.end method

.method public onCameraMotionReset()V
    .locals 2

    .line 176
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->clear()V

    .line 177
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->reset()V

    .line 178
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "presentationTimeUs"    # J
    .param p3, "releaseTimeNs"    # J
    .param p5, "format"    # Landroidx/media3/common/Format;
    .param p6, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 163
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 164
    iget-object v0, p5, Landroidx/media3/common/Format;->projectionData:[B

    iget v1, p5, Landroidx/media3/common/Format;->stereoMode:I

    invoke-direct {p0, v0, v1, p3, p4}, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->setProjection([BIJ)V

    .line 165
    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 0
    .param p1, "stereoMode"    # I

    .line 82
    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->defaultStereoMode:I

    .line 83
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->shutdown()V

    .line 151
    return-void
.end method
