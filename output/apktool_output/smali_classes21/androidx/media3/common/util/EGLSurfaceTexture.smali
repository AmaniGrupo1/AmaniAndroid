.class public final Landroidx/media3/common/util/EGLSurfaceTexture;
.super Ljava/lang/Object;
.source "EGLSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;,
        Landroidx/media3/common/util/EGLSurfaceTexture$SecureMode;
    }
.end annotation


# static fields
.field private static final EGL_CONFIG_ATTRIBUTES:[I

.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field private static final EGL_SURFACE_HEIGHT:I = 0x1

.field private static final EGL_SURFACE_WIDTH:I = 0x1

.field public static final SECURE_MODE_NONE:I = 0x0

.field public static final SECURE_MODE_PROTECTED_PBUFFER:I = 0x2

.field public static final SECURE_MODE_SURFACELESS_CONTEXT:I = 0x1


# instance fields
.field private final callback:Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;

.field private context:Landroid/opengl/EGLContext;

.field private display:Landroid/opengl/EGLDisplay;

.field private final handler:Landroid/os/Handler;

.field private surface:Landroid/opengl/EGLSurface;

.field private texture:Landroid/graphics/SurfaceTexture;

.field private final textureIdHolder:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/common/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    .line 113
    iput-object p2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->callback:Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    .line 115
    return-void
.end method

.method private static chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 9
    .param p0, "display"    # Landroid/opengl/EGLDisplay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 212
    const/4 v0, 0x1

    new-array v4, v0, [Landroid/opengl/EGLConfig;

    .line 213
    .local v4, "configs":[Landroid/opengl/EGLConfig;
    new-array v7, v0, [I

    .line 214
    .local v7, "numConfigs":[I
    sget-object v2, Landroidx/media3/common/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    .line 215
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    .end local p0    # "display":Landroid/opengl/EGLDisplay;
    .local v1, "display":Landroid/opengl/EGLDisplay;
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    .line 224
    .local p0, "success":Z
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    aget v3, v7, v2

    if-lez v3, :cond_0

    aget-object v3, v4, v2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 228
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aget v5, v7, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v4, v2

    filled-new-array {v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 226
    const-string v5, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    invoke-static {v5, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-static {v0, v3}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 230
    aget-object v0, v4, v2

    return-object v0
.end method

.method private static createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 5
    .param p0, "display"    # Landroid/opengl/EGLDisplay;
    .param p1, "config"    # Landroid/opengl/EGLConfig;
    .param p2, "secureMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 236
    const/16 v0, 0x3038

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x3098

    if-nez p2, :cond_0

    .line 237
    filled-new-array {v3, v2, v0}, [I

    move-result-object v0

    .local v0, "glAttributes":[I
    goto :goto_0

    .line 239
    .end local v0    # "glAttributes":[I
    :cond_0
    const/16 v4, 0x32c0

    filled-new-array {v3, v2, v4, v1, v0}, [I

    move-result-object v0

    .line 248
    .restart local v0    # "glAttributes":[I
    :goto_0
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 249
    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v0, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    .line 251
    .local v2, "context":Landroid/opengl/EGLContext;
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const-string v3, "eglCreateContext failed"

    invoke-static {v1, v3}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 252
    return-object v2
.end method

.method private static createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;
    .locals 4
    .param p0, "display"    # Landroid/opengl/EGLDisplay;
    .param p1, "config"    # Landroid/opengl/EGLConfig;
    .param p2, "context"    # Landroid/opengl/EGLContext;
    .param p3, "secureMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 259
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 260
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .local v0, "surface":Landroid/opengl/EGLSurface;
    goto :goto_2

    .line 263
    .end local v0    # "surface":Landroid/opengl/EGLSurface;
    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 264
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .local v1, "pbufferAttributes":[I
    goto :goto_0

    .line 275
    .end local v1    # "pbufferAttributes":[I
    :cond_1
    const/16 v1, 0x3057

    const/16 v2, 0x3056

    const/16 v3, 0x3038

    filled-new-array {v1, v0, v2, v0, v3}, [I

    move-result-object v1

    .line 284
    .restart local v1    # "pbufferAttributes":[I
    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    .line 285
    .local v3, "surface":Landroid/opengl/EGLSurface;
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    const-string v2, "eglCreatePbufferSurface failed"

    invoke-static {v0, v2}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    move-object v0, v3

    .line 288
    .end local v1    # "pbufferAttributes":[I
    .end local v3    # "surface":Landroid/opengl/EGLSurface;
    .restart local v0    # "surface":Landroid/opengl/EGLSurface;
    :goto_2
    nop

    .line 289
    invoke-static {p0, v0, v0, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    .line 290
    .local v1, "eglMadeCurrent":Z
    const-string v2, "eglMakeCurrent failed"

    invoke-static {v1, v2}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 291
    return-object v0

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method private dispatchOnFrameAvailable()V
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->callback:Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->callback:Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;

    invoke-interface {v0}, Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;->onFrameAvailable()V

    .line 198
    :cond_0
    return-void
.end method

.method private static generateTextureIds([I)V
    .locals 2
    .param p0, "textureIdHolder"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 296
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 297
    return-void
.end method

.method private static getDefaultDisplay()Landroid/opengl/EGLDisplay;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 202
    .local v1, "display":Landroid/opengl/EGLDisplay;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const-string v4, "eglGetDisplay failed"

    invoke-static {v3, v4}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 204
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 205
    .local v3, "version":[I
    nop

    .line 206
    invoke-static {v1, v3, v0, v3, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    .line 207
    .local v0, "eglInitialized":Z
    const-string v2, "eglInitialize failed"

    invoke-static {v0, v2}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 208
    return-object v1
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 169
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public init(I)V
    .locals 4
    .param p1, "secureMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 123
    invoke-static {}, Landroidx/media3/common/util/EGLSurfaceTexture;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 124
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroidx/media3/common/util/EGLSurfaceTexture;->chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 125
    .local v0, "config":Landroid/opengl/EGLConfig;
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, p1}, Landroidx/media3/common/util/EGLSurfaceTexture;->createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 126
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    invoke-static {v1, v0, v2, p1}, Landroidx/media3/common/util/EGLSurfaceTexture;->createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 127
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    invoke-static {v1}, Landroidx/media3/common/util/EGLSurfaceTexture;->generateTextureIds([I)V

    .line 128
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 129
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 130
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 176
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public release()V
    .locals 6

    .line 135
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 139
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 146
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 149
    :cond_2
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 152
    :cond_3
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 153
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 156
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 158
    :cond_4
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 159
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 160
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 161
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 162
    nop

    .line 163
    return-void

    .line 142
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 143
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 146
    :cond_5
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 147
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 149
    :cond_6
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_7

    .line 150
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 152
    :cond_7
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 153
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 156
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v2}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 158
    :cond_8
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 159
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 160
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 161
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 162
    throw v1
.end method

.method public run()V
    .locals 1

    .line 184
    invoke-direct {p0}, Landroidx/media3/common/util/EGLSurfaceTexture;->dispatchOnFrameAvailable()V

    .line 185
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 192
    :cond_0
    :goto_0
    return-void
.end method
