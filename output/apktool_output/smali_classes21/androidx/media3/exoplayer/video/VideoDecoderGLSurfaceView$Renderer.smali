.class final Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "VideoDecoderGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Renderer"
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

.field private static final TEXTURE_UNIFORMS:[Ljava/lang/String;

.field private static final TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

.field private static final VERTEX_SHADER:Ljava/lang/String; = "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

.field private static final kColorConversion2020:[F

.field private static final kColorConversion601:[F

.field private static final kColorConversion709:[F


# instance fields
.field private colorMatrixLocation:I

.field private final pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/media3/decoder/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final previousStrides:[I

.field private final previousWidths:[I

.field private program:Landroidx/media3/common/util/GlProgram;

.field private renderedOutputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

.field private final surfaceView:Landroid/opengl/GLSurfaceView;

.field private final texLocations:[I

.field private final textureCoords:[Ljava/nio/FloatBuffer;

.field private final yuvTextures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 92
    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion601:[F

    .line 98
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion709:[F

    .line 104
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion2020:[F

    .line 124
    const-string/jumbo v0, "u_tex"

    const-string/jumbo v1, "v_tex"

    const-string/jumbo v2, "y_tex"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    .line 142
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    .line 143
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    .line 142
    return-void

    :array_0
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41374bc7    # -0.392f
        0x40011687    # 2.017f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41a5e354    # -0.213f
        0x40072b02    # 2.112f
        0x3fe58106    # 1.793f
        -0x40f78d50    # -0.533f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x0
        -0x41bf7cee    # -0.188f
        0x400978d5    # 2.148f
        0x3fd76c8b    # 1.683f
        -0x40d91687    # -0.652f
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 5
    .param p1, "surfaceView"    # Landroid/opengl/GLSurfaceView;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    .line 165
    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    .line 166
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    .line 167
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    .line 168
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    .line 169
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 170
    new-array v1, v0, [Ljava/nio/FloatBuffer;

    iput-object v1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 172
    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    iget-object v3, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    aput v4, v2, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private setupTextures()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "program"
        }
    .end annotation

    .line 315
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 317
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    sget-object v3, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 318
    const v1, 0x84c0

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 319
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    aget v1, v1, v0

    const/16 v3, 0x2601

    const/16 v4, 0xde1

    invoke-static {v4, v1, v3}, Landroidx/media3/common/util/GlUtil;->bindTexture(III)V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroidx/media3/common/util/GlUtil$GlException;
    const-string v1, "VideoDecoderGLSV"

    const-string v2, "Failed to set up the textures"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :goto_1
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 23
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 208
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 209
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 210
    .local v2, "pendingOutputBuffer":Landroidx/media3/decoder/VideoDecoderOutputBuffer;
    if-nez v2, :cond_0

    iget-object v0, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-nez v0, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    if-eqz v2, :cond_2

    .line 215
    iget-object v0, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 218
    :cond_1
    iput-object v2, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 221
    :cond_2
    iget-object v0, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 224
    .local v3, "outputBuffer":Landroidx/media3/decoder/VideoDecoderOutputBuffer;
    sget-object v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion709:[F

    .line 225
    .local v0, "colorConversion":[F
    iget v4, v3, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->colorspace:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move-object v4, v0

    goto :goto_0

    .line 230
    :pswitch_1
    sget-object v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion2020:[F

    .line 231
    move-object v4, v0

    goto :goto_0

    .line 227
    :pswitch_2
    sget-object v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion601:[F

    .line 228
    move-object v4, v0

    .line 237
    .end local v0    # "colorConversion":[F
    .local v4, "colorConversion":[F
    :goto_0
    iget v0, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->colorMatrixLocation:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, v4, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 244
    iget-object v0, v3, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [I

    .line 245
    .local v7, "yuvStrides":[I
    iget-object v0, v3, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/nio/ByteBuffer;

    .line 247
    .local v8, "yuvPlanes":[Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v9, 0x2

    const/4 v10, 0x3

    if-ge v0, v10, :cond_4

    .line 248
    if-nez v0, :cond_3

    iget v9, v3, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    goto :goto_2

    :cond_3
    iget v10, v3, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    add-int/2addr v10, v5

    div-int/lit8 v9, v10, 0x2

    :goto_2
    move v14, v9

    .line 249
    .local v14, "h":I
    const v9, 0x84c0

    add-int/2addr v9, v0

    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 250
    iget-object v9, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    aget v9, v9, v0

    const/16 v10, 0xde1

    invoke-static {v10, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 251
    const/16 v9, 0xcf5

    invoke-static {v9, v5}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 252
    aget v13, v7, v0

    const/16 v17, 0x1401

    aget-object v18, v8, v0

    const/4 v11, 0x0

    const/16 v12, 0x1909

    const/4 v15, 0x0

    const/16 v16, 0x1909

    invoke-static/range {v10 .. v18}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 247
    .end local v14    # "h":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    .end local v0    # "i":I
    :cond_4
    new-array v11, v10, [I

    .line 265
    .local v11, "widths":[I
    iget v0, v3, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    aput v0, v11, v6

    .line 269
    aget v0, v11, v6

    add-int/2addr v0, v5

    div-int/2addr v0, v9

    aput v0, v11, v9

    aput v0, v11, v5

    .line 270
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    const/4 v12, 0x4

    const/4 v13, 0x5

    if-ge v0, v10, :cond_8

    .line 272
    iget-object v14, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    aget v14, v14, v0

    aget v15, v11, v0

    if-ne v14, v15, :cond_6

    iget-object v14, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    aget v14, v14, v0

    aget v15, v7, v0

    if-eq v14, v15, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v16, v5

    goto :goto_6

    .line 273
    :cond_6
    :goto_4
    aget v14, v7, v0

    if-eqz v14, :cond_7

    move v14, v5

    goto :goto_5

    :cond_7
    move v14, v6

    :goto_5
    invoke-static {v14}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 274
    aget v14, v11, v0

    int-to-float v14, v14

    aget v15, v7, v0

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 277
    .local v14, "widthRatio":F
    iget-object v15, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    move/from16 v16, v5

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/16 v17, 0x0

    aput v17, v5, v6

    aput v17, v5, v16

    aput v17, v5, v9

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v5, v10

    aput v14, v5, v12

    aput v17, v5, v13

    const/4 v12, 0x6

    aput v14, v5, v12

    const/4 v12, 0x7

    aput v18, v5, v12

    .line 278
    invoke-static {v5}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    aput-object v5, v15, v0

    .line 280
    iget-object v5, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    aget v17, v5, v0

    iget-object v5, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    aget-object v22, v5, v0

    const/16 v18, 0x2

    const/16 v19, 0x1406

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 287
    iget-object v5, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    aget v12, v11, v0

    aput v12, v5, v0

    .line 288
    iget-object v5, v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    aget v12, v7, v0

    aput v12, v5, v0

    .line 270
    .end local v14    # "widthRatio":F
    :goto_6
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v16

    goto :goto_3

    .line 292
    .end local v0    # "i":I
    :cond_8
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 293
    invoke-static {v13, v6, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 295
    :try_start_0
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    goto :goto_7

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroidx/media3/common/util/GlUtil$GlException;
    const-string v5, "VideoDecoderGLSV"

    const-string v6, "Failed to draw a frame"

    invoke-static {v5, v6, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 202
    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 203
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 179
    :try_start_0
    new-instance v0, Landroidx/media3/common/util/GlProgram;

    const-string/jumbo v1, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    const-string/jumbo v2, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    .line 180
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v1, "in_pos"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 181
    .local v1, "posLocation":I
    sget-object v6, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 188
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v3, "in_tc_y"

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 189
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v3, "in_tc_u"

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 190
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v3, "in_tc_v"

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 191
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v2, "mColorConversion"

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->colorMatrixLocation:I

    .line 192
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 193
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->setupTextures()V

    .line 194
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v1    # "posLocation":I
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroidx/media3/common/util/GlUtil$GlException;
    const-string v1, "VideoDecoderGLSV"

    const-string v2, "Failed to set up the textures and program"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .end local v0    # "e":Landroidx/media3/common/util/GlUtil$GlException;
    :goto_0
    return-void
.end method

.method public setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 2
    .param p1, "outputBuffer"    # Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 303
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 304
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 305
    .local v0, "oldPendingOutputBuffer":Landroidx/media3/decoder/VideoDecoderOutputBuffer;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 309
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 310
    return-void
.end method
