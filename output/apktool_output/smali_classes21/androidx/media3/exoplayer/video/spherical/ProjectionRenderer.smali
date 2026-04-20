.class final Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

.field private static final TAG:Ljava/lang/String; = "ProjectionRenderer"

.field private static final TEX_MATRIX_BOTTOM:[F

.field private static final TEX_MATRIX_LEFT:[F

.field private static final TEX_MATRIX_RIGHT:[F

.field private static final TEX_MATRIX_TOP:[F

.field private static final TEX_MATRIX_WHOLE:[F

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"


# instance fields
.field private leftMeshData:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

.field private mvpMatrixHandle:I

.field private positionHandle:I

.field private program:Landroidx/media3/common/util/GlProgram;

.field private rightMeshData:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

.field private stereoMode:I

.field private texCoordsHandle:I

.field private textureHandle:I

.field private uTexMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    .line 78
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    .line 81
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    .line 84
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    .line 87
    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Landroidx/media3/exoplayer/video/spherical/Projection;)Z
    .locals 5
    .param p0, "projection"    # Landroidx/media3/exoplayer/video/spherical/Projection;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 42
    .local v0, "leftMesh":Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;
    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 43
    .local v1, "rightMesh":Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 44
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->getSubMesh(I)Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    move-result-object v2

    iget v2, v2, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v2, :cond_0

    .line 45
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 46
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->getSubMesh(I)Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    move-result-object v2

    iget v2, v2, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v2, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    nop

    .line 43
    :goto_0
    return v3
.end method


# virtual methods
.method public draw(I[FZ)V
    .locals 12
    .param p1, "textureId"    # I
    .param p2, "mvpMatrix"    # [F
    .param p3, "rightEye"    # Z

    .line 143
    const-string v1, "ProjectionRenderer"

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->rightMeshData:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->leftMeshData:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    :goto_0
    move-object v2, v0

    .line 144
    .local v2, "meshData":Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;
    if-nez v2, :cond_1

    .line 145
    return-void

    .line 150
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->stereoMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 151
    if-eqz p3, :cond_2

    sget-object v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    :goto_1
    move-object v4, v0

    .local v0, "texMatrix":[F
    goto :goto_3

    .line 152
    .end local v0    # "texMatrix":[F
    :cond_3
    iget v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->stereoMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 153
    if-eqz p3, :cond_4

    sget-object v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    goto :goto_2

    :cond_4
    sget-object v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    :goto_2
    move-object v4, v0

    .restart local v0    # "texMatrix":[F
    goto :goto_3

    .line 155
    .end local v0    # "texMatrix":[F
    :cond_5
    sget-object v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    move-object v4, v0

    .line 157
    .local v4, "texMatrix":[F
    :goto_3
    iget v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    const/4 v5, 0x0

    invoke-static {v0, v3, v5, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 160
    iget v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    invoke-static {v0, v3, v5, p2, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 161
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 162
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 163
    iget v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->textureHandle:I

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 165
    :try_start_0
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_4

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroidx/media3/common/util/GlUtil$GlException;
    const-string v3, "Failed to bind uniforms"

    invoke-static {v1, v3, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :goto_4
    iget v6, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->positionHandle:I

    .line 177
    invoke-static {v2}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->access$000(Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 171
    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 179
    :try_start_1
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    goto :goto_5

    .line 180
    :catch_1
    move-exception v0

    .line 181
    .restart local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    const-string v3, "Failed to load position data"

    invoke-static {v1, v3, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :goto_5
    iget v6, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    .line 191
    invoke-static {v2}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->access$100(Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 185
    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 193
    :try_start_2
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_2
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_2 .. :try_end_2} :catch_2

    .line 196
    goto :goto_6

    .line 194
    :catch_2
    move-exception v0

    .line 195
    .restart local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    const-string v3, "Failed to load texture data"

    invoke-static {v1, v3, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :goto_6
    invoke-static {v2}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->access$200(Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;)I

    move-result v0

    invoke-static {v2}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->access$300(Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;)I

    move-result v3

    invoke-static {v0, v5, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 201
    :try_start_3
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_3
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_3 .. :try_end_3} :catch_3

    .line 204
    goto :goto_7

    .line 202
    :catch_3
    move-exception v0

    .line 203
    .restart local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    const-string v3, "Failed to render"

    invoke-static {v1, v3, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :goto_7
    return-void
.end method

.method public init()V
    .locals 3

    .line 122
    :try_start_0
    new-instance v0, Landroidx/media3/common/util/GlProgram;

    const-string/jumbo v1, "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"

    const-string v2, "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    .line 123
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string/jumbo v1, "uMvpMatrix"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    .line 124
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string/jumbo v1, "uTexMatrix"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    .line 125
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->positionHandle:I

    .line 126
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v1, "aTexCoords"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    .line 127
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->textureHandle:I
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroidx/media3/common/util/GlUtil$GlException;
    const-string v1, "ProjectionRenderer"

    const-string v2, "Failed to initialize the program"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :goto_0
    return-void
.end method

.method public setProjection(Landroidx/media3/exoplayer/video/spherical/Projection;)V
    .locals 3
    .param p1, "projection"    # Landroidx/media3/exoplayer/video/spherical/Projection;

    .line 110
    invoke-static {p1}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->isSupported(Landroidx/media3/exoplayer/video/spherical/Projection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    iget v0, p1, Landroidx/media3/exoplayer/video/spherical/Projection;->stereoMode:I

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->stereoMode:I

    .line 114
    new-instance v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    iget-object v1, p1, Landroidx/media3/exoplayer/video/spherical/Projection;->leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->getSubMesh(I)Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->leftMeshData:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    .line 115
    nop

    .line 116
    iget-boolean v0, p1, Landroidx/media3/exoplayer/video/spherical/Projection;->singleMesh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->leftMeshData:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    iget-object v1, p1, Landroidx/media3/exoplayer/video/spherical/Projection;->rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->getSubMesh(I)Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->rightMeshData:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    .line 117
    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 209
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->delete()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroidx/media3/common/util/GlUtil$GlException;
    const-string v1, "ProjectionRenderer"

    const-string v2, "Failed to delete the shader program"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :cond_0
    :goto_0
    return-void
.end method
