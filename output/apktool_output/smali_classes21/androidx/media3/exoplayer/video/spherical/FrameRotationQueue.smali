.class final Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;
.super Ljava/lang/Object;
.source "FrameRotationQueue.java"


# instance fields
.field private final recenterMatrix:[F

.field private recenterMatrixComputed:Z

.field private final rotationMatrix:[F

.field private final rotations:Landroidx/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/TimedValueQueue<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    .line 39
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    .line 40
    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Landroidx/media3/common/util/TimedValueQueue;

    .line 41
    return-void
.end method

.method public static computeRecenterMatrix([F[F)V
    .locals 6
    .param p0, "recenterMatrix"    # [F
    .param p1, "rotationMatrix"    # [F

    .line 100
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    .line 101
    const/16 v0, 0xa

    aget v1, p1, v0

    aget v2, p1, v0

    mul-float/2addr v1, v2

    const/16 v2, 0x8

    aget v3, p1, v2

    aget v4, p1, v2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 103
    .local v1, "normRowSqr":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 104
    .local v3, "normRow":F
    aget v4, p1, v0

    div-float/2addr v4, v3

    const/4 v5, 0x0

    aput v4, p0, v5

    .line 105
    aget v4, p1, v2

    div-float/2addr v4, v3

    const/4 v5, 0x2

    aput v4, p0, v5

    .line 106
    aget v4, p1, v2

    neg-float v4, v4

    div-float/2addr v4, v3

    aput v4, p0, v2

    .line 107
    aget v2, p1, v0

    div-float/2addr v2, v3

    aput v2, p0, v0

    .line 108
    return-void
.end method

.method private static getRotationMatrixFromAngleAxis([F[F)V
    .locals 12
    .param p0, "matrix"    # [F
    .param p1, "angleAxis"    # [F

    .line 114
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 115
    .local v0, "x":F
    const/4 v1, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    .line 116
    .local v1, "y":F
    const/4 v2, 0x2

    aget v2, p1, v2

    neg-float v2, v2

    .line 117
    .local v2, "z":F
    invoke-static {v0, v1, v2}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v3

    .line 118
    .local v3, "angleRad":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    .line 119
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v8, v4

    .line 120
    .local v8, "angleDeg":F
    div-float v9, v0, v3

    div-float v10, v1, v3

    div-float v11, v2, v3

    const/4 v7, 0x0

    move-object v6, p0

    .end local p0    # "matrix":[F
    .local v6, "matrix":[F
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 121
    .end local v8    # "angleDeg":F
    goto :goto_0

    .line 122
    .end local v6    # "matrix":[F
    .restart local p0    # "matrix":[F
    :cond_0
    move-object v6, p0

    .end local p0    # "matrix":[F
    .restart local v6    # "matrix":[F
    invoke-static {v6}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    .line 124
    :goto_0
    return-void
.end method


# virtual methods
.method public pollRotationMatrix([FJ)Z
    .locals 10
    .param p1, "matrix"    # [F
    .param p2, "timestampUs"    # J

    .line 70
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 71
    .local v0, "rotation":[F
    if-nez v0, :cond_0

    .line 72
    const/4 v1, 0x0

    return v1

    .line 75
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {v1, v0}, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->getRotationMatrixFromAngleAxis([F[F)V

    .line 76
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {v1, v3}, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    .line 78
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    .line 80
    :cond_1
    iget-object v6, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    iget-object v8, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    .end local p1    # "matrix":[F
    .local v4, "matrix":[F
    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 81
    return v2
.end method

.method public reset()V
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->clear()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    .line 58
    return-void
.end method

.method public setRotation(J[F)V
    .locals 1
    .param p1, "timestampUs"    # J
    .param p3, "angleAxis"    # [F

    .line 51
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 52
    return-void
.end method
