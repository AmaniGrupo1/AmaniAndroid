.class final Landroidx/media3/exoplayer/video/spherical/Projection;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;,
        Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;,
        Landroidx/media3/exoplayer/video/spherical/Projection$DrawMode;
    }
.end annotation


# static fields
.field public static final DRAW_MODE_TRIANGLES:I = 0x0

.field public static final DRAW_MODE_TRIANGLES_FAN:I = 0x2

.field public static final DRAW_MODE_TRIANGLES_STRIP:I = 0x1

.field public static final POSITION_COORDS_PER_VERTEX:I = 0x3

.field public static final TEXTURE_COORDS_PER_VERTEX:I = 0x2


# instance fields
.field public final leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

.field public final rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

.field public final singleMesh:Z

.field public final stereoMode:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V
    .locals 0
    .param p1, "mesh"    # Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;
    .param p2, "stereoMode"    # I

    .line 181
    invoke-direct {p0, p1, p1, p2}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V
    .locals 1
    .param p1, "leftMesh"    # Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;
    .param p2, "rightMesh"    # Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;
    .param p3, "stereoMode"    # I

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 194
    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 195
    iput p3, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->stereoMode:I

    .line 196
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->singleMesh:Z

    .line 197
    return-void
.end method

.method public static createEquirectangular(FIIFFI)Landroidx/media3/exoplayer/video/spherical/Projection;
    .locals 26
    .param p0, "radius"    # F
    .param p1, "latitudes"    # I
    .param p2, "longitudes"    # I
    .param p3, "verticalFovDegrees"    # F
    .param p4, "horizontalFovDegrees"    # F
    .param p5, "stereoMode"    # I

    .line 89
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    const/4 v8, 0x1

    if-lez v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 90
    if-lt v1, v8, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 91
    if-lt v2, v8, :cond_2

    move v6, v8

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    cmpl-float v6, v3, v5

    if-lez v6, :cond_3

    const/high16 v6, 0x43340000    # 180.0f

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_3

    move v6, v8

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 93
    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    const/high16 v5, 0x43b40000    # 360.0f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    move v5, v8

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 96
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 97
    .local v5, "verticalFovRads":F
    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v6, v9

    .line 98
    .local v6, "horizontalFovRads":F
    int-to-float v9, v1

    div-float v9, v5, v9

    .line 99
    .local v9, "quadHeightRads":F
    int-to-float v10, v2

    div-float v10, v6, v10

    .line 102
    .local v10, "quadWidthRads":F
    add-int/lit8 v11, v2, 0x1

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v11, v12

    mul-int/2addr v11, v1

    .line 104
    .local v11, "vertexCount":I
    mul-int/lit8 v13, v11, 0x3

    new-array v13, v13, [F

    .line 105
    .local v13, "vertexData":[F
    mul-int/lit8 v14, v11, 0x2

    new-array v14, v14, [F

    .line 109
    .local v14, "textureData":[F
    const/4 v15, 0x0

    .line 110
    .local v15, "vOffset":I
    const/16 v16, 0x0

    .line 112
    .local v16, "tOffset":I
    const/16 v17, 0x0

    move/from16 v7, v17

    .local v7, "j":I
    :goto_5
    if-ge v7, v1, :cond_b

    .line 115
    int-to-float v8, v7

    mul-float/2addr v8, v9

    const/high16 v18, 0x40000000    # 2.0f

    div-float v19, v5, v18

    sub-float v8, v8, v19

    .line 116
    .local v8, "phiLow":F
    add-int/lit8 v12, v7, 0x1

    int-to-float v12, v12

    mul-float/2addr v12, v9

    div-float v20, v5, v18

    sub-float v12, v12, v20

    .line 118
    .local v12, "phiHigh":F
    const/16 v20, 0x0

    move/from16 v1, v20

    .local v1, "i":I
    :goto_6
    add-int/lit8 v3, v2, 0x1

    if-ge v1, v3, :cond_a

    .line 119
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_7
    const/4 v4, 0x2

    if-ge v3, v4, :cond_9

    .line 121
    if-nez v3, :cond_5

    move v4, v8

    goto :goto_8

    :cond_5
    move v4, v12

    .line 122
    .local v4, "phi":F
    :goto_8
    move/from16 v20, v5

    .end local v5    # "verticalFovRads":F
    .local v20, "verticalFovRads":F
    int-to-float v5, v1

    mul-float/2addr v5, v10

    const v21, 0x40490fdb    # (float)Math.PI

    add-float v5, v5, v21

    div-float v21, v6, v18

    sub-float v5, v5, v21

    .line 125
    .local v5, "theta":F
    add-int/lit8 v21, v15, 0x1

    move/from16 v22, v6

    move/from16 v23, v7

    .end local v6    # "horizontalFovRads":F
    .end local v7    # "j":I
    .end local v15    # "vOffset":I
    .local v21, "vOffset":I
    .local v22, "horizontalFovRads":F
    .local v23, "j":I
    float-to-double v6, v0

    move-wide/from16 v24, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v24

    move-wide/from16 v24, v6

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v24

    double-to-float v6, v6

    neg-float v6, v6

    aput v6, v13, v15

    .line 126
    add-int/lit8 v6, v21, 0x1

    move v15, v6

    .end local v21    # "vOffset":I
    .restart local v15    # "vOffset":I
    float-to-double v6, v0

    move-wide/from16 v24, v6

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v24

    double-to-float v6, v6

    aput v6, v13, v21

    .line 127
    add-int/lit8 v6, v15, 0x1

    move/from16 v21, v8

    .end local v8    # "phiLow":F
    .end local v15    # "vOffset":I
    .local v6, "vOffset":I
    .local v21, "phiLow":F
    float-to-double v7, v0

    move-wide/from16 v24, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v24

    move-wide/from16 v24, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v24

    double-to-float v7, v7

    aput v7, v13, v15

    .line 129
    add-int/lit8 v7, v16, 0x1

    .end local v16    # "tOffset":I
    .local v7, "tOffset":I
    int-to-float v8, v1

    mul-float/2addr v8, v10

    div-float v8, v8, v22

    aput v8, v14, v16

    .line 130
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "tOffset":I
    .local v8, "tOffset":I
    add-int v15, v23, v3

    int-to-float v15, v15

    mul-float/2addr v15, v9

    div-float v15, v15, v20

    aput v15, v14, v7

    .line 133
    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    if-ne v1, v2, :cond_8

    const/4 v7, 0x1

    if-ne v3, v7, :cond_8

    .line 134
    :cond_7
    add-int/lit8 v7, v6, -0x3

    const/4 v15, 0x3

    invoke-static {v13, v7, v13, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    add-int/lit8 v6, v6, 0x3

    .line 141
    add-int/lit8 v7, v8, -0x2

    const/4 v15, 0x2

    invoke-static {v14, v7, v14, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    add-int/lit8 v8, v8, 0x2

    move/from16 v16, v8

    goto :goto_9

    .line 133
    :cond_8
    const/4 v15, 0x2

    .line 119
    .end local v4    # "phi":F
    .end local v5    # "theta":F
    move/from16 v16, v8

    .end local v8    # "tOffset":I
    .restart local v16    # "tOffset":I
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, p4

    move v15, v6

    move/from16 v5, v20

    move/from16 v8, v21

    move/from16 v6, v22

    move/from16 v7, v23

    goto/16 :goto_7

    .end local v20    # "verticalFovRads":F
    .end local v21    # "phiLow":F
    .end local v22    # "horizontalFovRads":F
    .end local v23    # "j":I
    .local v5, "verticalFovRads":F
    .local v6, "horizontalFovRads":F
    .local v7, "j":I
    .local v8, "phiLow":F
    .restart local v15    # "vOffset":I
    :cond_9
    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v21, v8

    .line 118
    .end local v3    # "k":I
    .end local v5    # "verticalFovRads":F
    .end local v6    # "horizontalFovRads":F
    .end local v7    # "j":I
    .end local v8    # "phiLow":F
    .restart local v20    # "verticalFovRads":F
    .restart local v21    # "phiLow":F
    .restart local v22    # "horizontalFovRads":F
    .restart local v23    # "j":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, p3

    move/from16 v4, p4

    goto/16 :goto_6

    .end local v20    # "verticalFovRads":F
    .end local v21    # "phiLow":F
    .end local v22    # "horizontalFovRads":F
    .end local v23    # "j":I
    .restart local v5    # "verticalFovRads":F
    .restart local v6    # "horizontalFovRads":F
    .restart local v7    # "j":I
    .restart local v8    # "phiLow":F
    :cond_a
    move/from16 v20, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v21, v8

    const/16 v19, 0x2

    .line 112
    .end local v1    # "i":I
    .end local v5    # "verticalFovRads":F
    .end local v6    # "horizontalFovRads":F
    .end local v7    # "j":I
    .end local v8    # "phiLow":F
    .end local v12    # "phiHigh":F
    .restart local v20    # "verticalFovRads":F
    .restart local v22    # "horizontalFovRads":F
    .restart local v23    # "j":I
    add-int/lit8 v7, v23, 0x1

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v12, v19

    const/4 v8, 0x1

    .end local v23    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_5

    .end local v20    # "verticalFovRads":F
    .end local v22    # "horizontalFovRads":F
    .restart local v5    # "verticalFovRads":F
    .restart local v6    # "horizontalFovRads":F
    :cond_b
    move/from16 v20, v5

    move/from16 v22, v6

    move/from16 v23, v7

    .line 154
    .end local v5    # "verticalFovRads":F
    .end local v6    # "horizontalFovRads":F
    .end local v7    # "j":I
    .restart local v20    # "verticalFovRads":F
    .restart local v22    # "horizontalFovRads":F
    new-instance v1, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-direct {v1, v3, v13, v14, v7}, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    .line 156
    .local v1, "subMesh":Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;
    new-instance v4, Landroidx/media3/exoplayer/video/spherical/Projection;

    new-instance v5, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    new-array v6, v7, [Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    aput-object v1, v6, v3

    invoke-direct {v5, v6}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;-><init>([Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;)V

    move/from16 v3, p5

    invoke-direct {v4, v5, v3}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-object v4
.end method

.method public static createEquirectangular(I)Landroidx/media3/exoplayer/video/spherical/Projection;
    .locals 6
    .param p0, "stereoMode"    # I

    .line 60
    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v0, 0x42480000    # 50.0f

    const/16 v1, 0x24

    const/16 v2, 0x48

    move v5, p0

    .end local p0    # "stereoMode":I
    .local v5, "stereoMode":I
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/video/spherical/Projection;->createEquirectangular(FIIFFI)Landroidx/media3/exoplayer/video/spherical/Projection;

    move-result-object p0

    return-object p0
.end method
