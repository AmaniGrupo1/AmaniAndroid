.class public final synthetic Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/extractor/FlacStreamMetadata;"
    method = "getSampleNumber"
    proto = "(J)J"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/extractor/FlacStreamMetadata;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/FlacStreamMetadata;

    return-void
.end method


# virtual methods
.method public final timeUsToTargetTime(J)J
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide p1

    return-wide p1
.end method
