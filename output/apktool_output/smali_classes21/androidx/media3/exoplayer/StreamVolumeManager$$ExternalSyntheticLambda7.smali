.class public final synthetic Landroidx/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/exoplayer/StreamVolumeManager;"
    method = "lambda$setStreamType$2"
    proto = "(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/StreamVolumeManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/StreamVolumeManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda7;->f$0:Landroidx/media3/exoplayer/StreamVolumeManager;

    iput p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda7;->f$0:Landroidx/media3/exoplayer/StreamVolumeManager;

    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda7;->f$1:I

    check-cast p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$setStreamType$2$androidx-media3-exoplayer-StreamVolumeManager(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p1

    return-object p1
.end method
