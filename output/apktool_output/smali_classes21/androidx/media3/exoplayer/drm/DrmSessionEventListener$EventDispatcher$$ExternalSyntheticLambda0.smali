.class public final synthetic Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;"
    method = "lambda$drmSessionManagerError$2"
    proto = "(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;Ljava/lang/Exception;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final synthetic f$1:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

.field public final synthetic f$2:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->lambda$drmSessionManagerError$2$androidx-media3-exoplayer-drm-DrmSessionEventListener$EventDispatcher(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;Ljava/lang/Exception;)V

    return-void
.end method
