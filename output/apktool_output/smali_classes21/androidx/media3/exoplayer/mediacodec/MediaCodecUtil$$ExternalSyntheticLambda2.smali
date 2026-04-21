.class public final synthetic Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;"
    method = "lambda$sortByScore$4"
    proto = "(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;

    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->lambda$sortByScore$4(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
