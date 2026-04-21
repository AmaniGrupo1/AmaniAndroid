.class public final synthetic Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/exoplayer/source/preload/PreCacheHelper;"
    method = "lambda$preCache$0"
    proto = "(JJ)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda1;->f$1:J

    iput-wide p4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda1;->f$1:J

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda1;->f$2:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->lambda$preCache$0$androidx-media3-exoplayer-source-preload-PreCacheHelper(JJ)V

    return-void
.end method
