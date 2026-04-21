.class public final Landroidx/media3/exoplayer/video/PlaceholderSurface;
.super Landroid/view/Surface;
.source "PlaceholderSurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlaceholderSurface"

.field private static secureMode:I

.field private static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field private final thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0
    .param p1, "thread"    # Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p3, "secure"    # Z

    .line 98
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 99
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    .line 100
    iput-boolean p3, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secure:Z

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;ZLandroidx/media3/exoplayer/video/PlaceholderSurface$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;
    .param p2, "x1"    # Landroid/graphics/SurfaceTexture;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Landroidx/media3/exoplayer/video/PlaceholderSurface$1;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/PlaceholderSurface;-><init>(Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static getSecureMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->isProtectedContentExtensionSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->isSurfacelessContextExtensionSupported()Z

    move-result v0
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 131
    :cond_1
    return v0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroidx/media3/common/util/GlUtil$GlException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to determine secure mode due to GL error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/media3/common/util/GlUtil$GlException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlaceholderSurface"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return v0
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-boolean v1, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 63
    invoke-static {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->getSecureMode(Landroid/content/Context;)I

    move-result v1

    sput v1, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureMode:I

    .line 64
    sput-boolean v2, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureModeInitialized:Z

    .line 66
    :cond_0
    sget v1, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 61
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static newInstance(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secure"    # Z

    .line 91
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 92
    new-instance v1, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    invoke-direct {v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;-><init>()V

    .line 93
    .local v1, "thread":Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;
    if-eqz p1, :cond_2

    sget v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureMode:I

    :cond_2
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->init(I)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceV17(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secure"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstance(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 110
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->threadReleased:Z

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->release()V

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->threadReleased:Z

    .line 115
    :cond_0
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
