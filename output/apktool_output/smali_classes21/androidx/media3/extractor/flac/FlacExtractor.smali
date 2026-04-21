.class public final Landroidx/media3/extractor/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/flac/FlacExtractor$Flags;
    }
.end annotation


# static fields
.field private static final BUFFER_LENGTH:I = 0x8000

.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x1

.field private static final SAMPLE_NUMBER_UNKNOWN:I = -0x1

.field private static final STATE_GET_FRAME_START_MARKER:I = 0x4

.field private static final STATE_GET_STREAM_MARKER_AND_INFO_BLOCK_BYTES:I = 0x1

.field private static final STATE_READ_FRAMES:I = 0x5

.field private static final STATE_READ_ID3_METADATA:I = 0x0

.field private static final STATE_READ_METADATA_BLOCKS:I = 0x3

.field private static final STATE_READ_STREAM_MARKER:I = 0x2


# instance fields
.field private binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

.field private final buffer:Landroidx/media3/common/util/ParsableByteArray;

.field private currentFrameBytesWritten:I

.field private currentFrameFirstSampleNumber:J

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

.field private frameStartMarker:I

.field private id3Metadata:Landroidx/media3/common/Metadata;

.field private final id3MetadataDisabled:Z

.field private minFrameSize:I

.field private final sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

.field private state:I

.field private final streamMarkerAndInfoBlock:[B

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Landroidx/media3/extractor/flac/FlacExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/flac/FlacExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/flac/FlacExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>(I)V

    .line 135
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    .line 146
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 147
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    .line 148
    new-instance v0, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 149
    iput v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    .line 150
    return-void
.end method

.method private findFrame(Landroidx/media3/common/util/ParsableByteArray;Z)J
    .locals 4
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "foundEndOfInput"    # Z

    .line 359
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 362
    .local v0, "frameOffset":I
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    .line 363
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 364
    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-static {p1, v1, v2, v3}, Landroidx/media3/extractor/FlacFrameReader;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 367
    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide v1, v1, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide v1

    .line 369
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_1
    if-eqz p2, :cond_5

    .line 392
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    iget v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_4

    .line 393
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 396
    :try_start_0
    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 397
    invoke-static {p1, v1, v2, v3}, Landroidx/media3/extractor/FlacFrameReader;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .local v1, "frameFound":Z
    goto :goto_2

    .line 399
    .end local v1    # "frameFound":Z
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    move v1, v2

    .line 403
    .local v1, "frameFound":Z
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 406
    const/4 v1, 0x0

    .line 408
    :cond_2
    if-eqz v1, :cond_3

    .line 410
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 411
    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide v2, v2, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide v2

    .line 413
    :cond_3
    nop

    .end local v1    # "frameFound":Z
    add-int/lit8 v0, v0, 0x1

    .line 414
    goto :goto_1

    .line 416
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_3

    .line 418
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 421
    :goto_3
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private getFrameStartMarker(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 5
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-static {p1}, Landroidx/media3/extractor/FlacMetadataReader;->getFrameStartMarker(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    .line 248
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    .line 251
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 252
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 250
    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/media3/extractor/flac/FlacExtractor;->getSeekMap(JJ)Landroidx/media3/extractor/SeekMap;

    move-result-object v1

    .line 249
    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 254
    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    .line 255
    return-void
.end method

.method private getSeekMap(JJ)Landroidx/media3/extractor/SeekMap;
    .locals 8
    .param p1, "firstFramePosition"    # J
    .param p3, "streamLength"    # J

    .line 331
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    iget-object v0, v0, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    array-length v0, v0

    if-lez v0, :cond_0

    .line 334
    new-instance v0, Landroidx/media3/extractor/FlacSeekTableSeekMap;

    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/extractor/FlacSeekTableSeekMap;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;J)V

    return-object v0

    .line 335
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-wide v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 336
    new-instance v1, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "firstFramePosition":J
    .end local p3    # "streamLength":J
    .local v4, "firstFramePosition":J
    .local v6, "streamLength":J
    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;IJJ)V

    iput-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    .line 339
    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    invoke-virtual {p1}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;->getSeekMap()Landroidx/media3/extractor/SeekMap;

    move-result-object p1

    return-object p1

    .line 335
    .end local v4    # "firstFramePosition":J
    .end local v6    # "streamLength":J
    .restart local p1    # "firstFramePosition":J
    .restart local p3    # "streamLength":J
    :cond_1
    move-wide v4, p1

    move-wide v6, p3

    .line 341
    .end local p1    # "firstFramePosition":J
    .end local p3    # "streamLength":J
    .restart local v4    # "firstFramePosition":J
    .restart local v6    # "streamLength":J
    new-instance p1, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-object p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {p2}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object p1
.end method

.method private getStreamMarkerAndInfoBlockBytes(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 217
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 218
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    .line 219
    return-void
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/flac/FlacExtractor;

    invoke-direct {v1}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private outputSampleMetadata()V
    .locals 11

    .line 425
    iget-wide v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 428
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long v5, v0, v2

    .line 429
    .local v5, "timeUs":J
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/media3/extractor/TrackOutput;

    iget v8, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 430
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 436
    return-void
.end method

.method private readFrames(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 12
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    invoke-virtual {v0}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;->handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 268
    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 269
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 270
    invoke-static {p1, v0}, Landroidx/media3/extractor/FlacFrameReader;->getFirstSampleNumber(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/FlacStreamMetadata;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    .line 271
    return v1

    .line 275
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    .line 276
    .local v0, "currentLimit":I
    const/4 v4, 0x0

    .line 277
    .local v4, "foundEndOfInput":Z
    const v5, 0x8000

    if-ge v0, v5, :cond_4

    .line 278
    iget-object v6, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 280
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    sub-int/2addr v5, v0

    .line 279
    invoke-interface {p1, v6, v0, v5}, Landroidx/media3/extractor/ExtractorInput;->read([BII)I

    move-result v5

    .line 283
    .local v5, "bytesRead":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    move v4, v7

    .line 284
    nop

    .line 286
    iget-object v7, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 284
    if-nez v4, :cond_3

    .line 285
    add-int v6, v0, v5

    invoke-virtual {v7, v6}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_1

    .line 286
    :cond_3
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    if-nez v7, :cond_4

    .line 287
    invoke-direct {p0}, Landroidx/media3/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    .line 288
    return v6

    .line 293
    .end local v5    # "bytesRead":I
    :cond_4
    :goto_1
    iget-object v5, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 296
    .local v5, "positionBeforeFindingAFrame":I
    iget v6, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget v7, p0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    if-ge v6, v7, :cond_5

    .line 297
    iget-object v6, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    iget v7, p0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    iget v8, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 300
    :cond_5
    iget-object v6, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p0, v6, v4}, Landroidx/media3/extractor/flac/FlacExtractor;->findFrame(Landroidx/media3/common/util/ParsableByteArray;Z)J

    move-result-wide v6

    .line 301
    .local v6, "nextFrameFirstSampleNumber":J
    iget-object v8, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v8

    sub-int/2addr v8, v5

    .line 302
    .local v8, "numberOfFrameBytes":I
    iget-object v9, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v9, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 303
    iget-object v9, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v10, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v9, v10, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 304
    iget v9, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    add-int/2addr v9, v8

    iput v9, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 307
    cmp-long v2, v6, v2

    if-eqz v2, :cond_6

    .line 308
    invoke-direct {p0}, Landroidx/media3/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    .line 309
    iput v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 310
    iput-wide v6, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    .line 313
    :cond_6
    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v3

    sub-int/2addr v2, v3

    .line 314
    .local v2, "remainingBufferCapacity":I
    iget-object v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v9, 0x10

    if-ge v3, v9, :cond_7

    if-ge v2, v9, :cond_7

    .line 320
    iget-object v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    .line 321
    .local v3, "bytesLeft":I
    iget-object v9, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 322
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v9

    iget-object v10, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v10

    iget-object v11, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v11

    .line 321
    invoke-static {v9, v10, v11, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    iget-object v9, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v9, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 324
    iget-object v9, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v9, v3}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 327
    .end local v3    # "bytesLeft":I
    :cond_7
    return v1
.end method

.method private readId3Metadata(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 2
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-boolean v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Landroidx/media3/extractor/FlacMetadataReader;->readId3Metadata(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/common/Metadata;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->id3Metadata:Landroidx/media3/common/Metadata;

    .line 212
    iput v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    .line 213
    return-void
.end method

.method private readMetadataBlocks(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "isLastMetadataBlock":Z
    new-instance v1, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;

    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-direct {v1, v2}, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;)V

    .line 230
    .local v1, "metadataHolder":Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;
    :goto_0
    if-nez v0, :cond_0

    .line 231
    invoke-static {p1, v1}, Landroidx/media3/extractor/FlacMetadataReader;->readMetadataBlock(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;)Z

    move-result v0

    .line 233
    iget-object v2, v1, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/FlacStreamMetadata;

    iput-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    goto :goto_0

    .line 236
    :cond_0
    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v3, 0x6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    .line 238
    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    iget-object v4, p0, Landroidx/media3/extractor/flac/FlacExtractor;->id3Metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v2, v3, v4}, Landroidx/media3/extractor/FlacStreamMetadata;->getFormat([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    move-result-object v2

    .line 239
    .local v2, "format":Landroidx/media3/common/Format;
    iget-object v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/TrackOutput;

    .line 240
    invoke-virtual {v2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    const-string v5, "audio/flac"

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 241
    iget-object v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/TrackOutput;

    iget-object v4, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v4}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroidx/media3/extractor/TrackOutput;->durationUs(J)V

    .line 243
    const/4 v3, 0x4

    iput v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    .line 244
    return-void
.end method

.method private readStreamMarker(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-static {p1}, Landroidx/media3/extractor/FlacMetadataReader;->readStreamMarker(Landroidx/media3/extractor/ExtractorInput;)V

    .line 223
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    .line 224
    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 160
    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 162
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 163
    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 2
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 185
    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/flac/FlacExtractor;->readFrames(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 182
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flac/FlacExtractor;->getFrameStartMarker(Landroidx/media3/extractor/ExtractorInput;)V

    .line 183
    return v1

    .line 179
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flac/FlacExtractor;->readMetadataBlocks(Landroidx/media3/extractor/ExtractorInput;)V

    .line 180
    return v1

    .line 176
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flac/FlacExtractor;->readStreamMarker(Landroidx/media3/extractor/ExtractorInput;)V

    .line 177
    return v1

    .line 173
    :pswitch_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flac/FlacExtractor;->getStreamMarkerAndInfoBlockBytes(Landroidx/media3/extractor/ExtractorInput;)V

    .line 174
    return v1

    .line 170
    :pswitch_5
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flac/FlacExtractor;->readId3Metadata(Landroidx/media3/extractor/ExtractorInput;)V

    .line 171
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 206
    return-void
.end method

.method public seek(JJ)V
    .locals 4
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 193
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 194
    iput v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    goto :goto_0

    .line 195
    :cond_0
    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    invoke-virtual {v2, p3, p4}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;->setSeekTargetUs(J)V

    .line 198
    :cond_1
    :goto_0
    cmp-long v2, p3, v0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    .line 199
    iput v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 200
    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 201
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/extractor/FlacMetadataReader;->peekId3Metadata(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/common/Metadata;

    .line 155
    invoke-static {p1}, Landroidx/media3/extractor/FlacMetadataReader;->checkAndPeekStreamMarker(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
