.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/exoplayer/ExoPlayerImpl;"
    method = "lambda$setAudioSessionId$14"
    proto = "(ILjava/lang/Integer;)Ljava/lang/Integer;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$setAudioSessionId$14$androidx-media3-exoplayer-ExoPlayerImpl(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
