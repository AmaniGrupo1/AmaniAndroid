.class Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;
.super Landroidx/media3/extractor/ForwardingTrackOutput;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControlledTrackOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;
    }
.end annotation


# instance fields
.field private final discardingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

.field private final outputMode:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/source/SampleQueue;)V
    .locals 2
    .param p1, "sampleQueue"    # Landroidx/media3/exoplayer/source/SampleQueue;

    .line 1397
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ForwardingTrackOutput;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    .line 1398
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 1399
    new-instance v0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->discardingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

    .line 1400
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->PASS_THROUGH:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1401
    return-void
.end method

.method private getCurrentOutput()Landroidx/media3/extractor/TrackOutput;
    .locals 2

    .line 1463
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARDING:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->discardingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    :goto_0
    return-object v0
.end method


# virtual methods
.method isSelected()Z
    .locals 2

    .line 1459
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->PASS_THROUGH:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sampleData(Landroidx/media3/common/DataReader;IZ)I
    .locals 1
    .param p1, "input"    # Landroidx/media3/common/DataReader;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1406
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->getCurrentOutput()Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 1
    .param p1, "input"    # Landroidx/media3/common/DataReader;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .param p4, "sampleDataPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1413
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->getCurrentOutput()Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZI)I

    move-result v0

    return v0
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 1
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "length"    # I

    .line 1418
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->getCurrentOutput()Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1419
    return-void
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 1
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "length"    # I
    .param p3, "sampleDataPart"    # I

    .line 1423
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->getCurrentOutput()Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 1424
    return-void
.end method

.method public sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 7
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 1433
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->getCurrentOutput()Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "timeUs":J
    .end local p3    # "flags":I
    .end local p4    # "size":I
    .end local p5    # "offset":I
    .end local p6    # "cryptoData":Landroidx/media3/extractor/TrackOutput$CryptoData;
    .local v1, "timeUs":J
    .local v3, "flags":I
    .local v4, "size":I
    .local v5, "offset":I
    .local v6, "cryptoData":Landroidx/media3/extractor/TrackOutput$CryptoData;
    invoke-interface/range {v0 .. v6}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1434
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARD_AFTER_NEXT_SAMPLE_METADATA:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    if-ne p1, p2, :cond_0

    .line 1435
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/SampleQueue;->reset()V

    .line 1436
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARDING:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1438
    :cond_0
    return-void
.end method

.method updateSelectionState(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .line 1448
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1449
    if-eqz p1, :cond_0

    sget-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->PASS_THROUGH:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARD_AFTER_NEXT_SAMPLE_METADATA:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    .line 1448
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1452
    if-nez p1, :cond_1

    .line 1453
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    .line 1455
    :cond_1
    return-void
.end method
