.class final Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;
.super Landroidx/media3/extractor/BinarySearchSeeker;
.source "FlacBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;IJJ)V
    .locals 17
    .param p1, "flacStreamMetadata"    # Landroidx/media3/extractor/FlacStreamMetadata;
    .param p2, "frameStartMarker"    # I
    .param p3, "firstFramePosition"    # J
    .param p5, "inputLength"    # J

    .line 50
    move-object/from16 v0, p1

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;)V

    new-instance v3, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    const/4 v1, 0x0

    move/from16 v4, p2

    invoke-direct {v3, v0, v4, v1}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/flac/FlacBinarySearchSeeker$1;)V

    .line 53
    invoke-virtual {v0}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v4

    iget-wide v8, v0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 58
    invoke-virtual {v0}, Landroidx/media3/extractor/FlacStreamMetadata;->getApproxBytesPerFrame()J

    move-result-wide v14

    iget v1, v0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 59
    const/4 v6, 0x6

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 50
    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-direct/range {v1 .. v16}, Landroidx/media3/extractor/BinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    .line 61
    return-void
.end method
