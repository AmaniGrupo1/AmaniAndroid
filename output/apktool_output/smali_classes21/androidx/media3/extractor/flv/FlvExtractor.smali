.class public final Landroidx/media3/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field private static final FLV_HEADER_SIZE:I = 0x9

.field private static final FLV_TAG:I = 0x464c56

.field private static final FLV_TAG_HEADER_SIZE:I = 0xb

.field private static final STATE_READING_FLV_HEADER:I = 0x1

.field private static final STATE_READING_TAG_DATA:I = 0x4

.field private static final STATE_READING_TAG_HEADER:I = 0x3

.field private static final STATE_SKIPPING_TO_TAG_HEADER:I = 0x2

.field private static final TAG_TYPE_AUDIO:I = 0x8

.field private static final TAG_TYPE_SCRIPT_DATA:I = 0x12

.field private static final TAG_TYPE_VIDEO:I = 0x9


# instance fields
.field private audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

.field private bytesToNextTagHeader:I

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private final headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private mediaTagTimestampOffsetUs:J

.field private final metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

.field private outputFirstSample:Z

.field private outputSeekMap:Z

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private state:I

.field private final tagData:Landroidx/media3/common/util/ParsableByteArray;

.field private tagDataSize:I

.field private final tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private tagTimestampUs:J

.field private tagType:I

.field private videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Landroidx/media3/extractor/flv/FlvExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/flv/FlvExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/flv/FlvExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 97
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 98
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 99
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    .line 100
    new-instance v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {v0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    .line 102
    return-void
.end method

.method private ensureReadyForMediaOutput()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 313
    iget-boolean v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    .line 317
    :cond_0
    return-void
.end method

.method private getCurrentTimestampUs()J
    .locals 4

    .line 320
    iget-boolean v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-eqz v0, :cond_0

    .line 321
    iget-wide v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 320
    :goto_0
    return-wide v0
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/flv/FlvExtractor;

    invoke-direct {v1}, Landroidx/media3/extractor/flv/FlvExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v1

    .line 304
    iget-object v2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    .line 301
    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 306
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    iget v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 307
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 308
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    return-object v0
.end method

.method private readFlvHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 9
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    return v1

    .line 201
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 202
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 203
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 204
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v1

    .line 205
    .local v5, "hasAudio":Z
    :goto_0
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_2

    move v1, v3

    .line 206
    .local v1, "hasVideo":Z
    :cond_2
    if-eqz v5, :cond_3

    iget-object v6, p0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    if-nez v6, :cond_3

    .line 207
    new-instance v6, Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    iget-object v7, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 208
    const/16 v8, 0x8

    invoke-interface {v7, v8, v3}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/media3/extractor/flv/AudioTagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v6, p0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    .line 210
    :cond_3
    const/4 v6, 0x2

    if-eqz v1, :cond_4

    iget-object v7, p0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    if-nez v7, :cond_4

    .line 211
    new-instance v7, Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    iget-object v8, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 212
    invoke-interface {v8, v2, v6}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/media3/extractor/flv/VideoTagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v7, p0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    .line 214
    :cond_4
    iget-object v7, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v7}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 217
    iget-object v7, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    sub-int/2addr v7, v2

    add-int/2addr v7, v4

    iput v7, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 218
    iput v6, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    .line 219
    return v3
.end method

.method private readTagData(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 13
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 266
    const/4 v0, 0x1

    .line 267
    .local v0, "wasConsumed":Z
    const/4 v1, 0x0

    .line 268
    .local v1, "wasSampleOutput":Z
    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;->getCurrentTimestampUs()J

    move-result-wide v2

    .line 269
    .local v2, "timestampUs":J
    iget v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagType:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    if-eqz v4, :cond_0

    .line 270
    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 271
    iget-object v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->consume(Landroidx/media3/common/util/ParsableByteArray;J)Z

    move-result v1

    goto :goto_0

    .line 272
    :cond_0
    iget v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagType:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    if-eqz v4, :cond_1

    .line 273
    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 274
    iget-object v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->consume(Landroidx/media3/common/util/ParsableByteArray;J)Z

    move-result v1

    goto :goto_0

    .line 275
    :cond_1
    iget v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagType:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v4, :cond_3

    .line 276
    iget-object v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->consume(Landroidx/media3/common/util/ParsableByteArray;J)Z

    move-result v1

    .line 277
    iget-object v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v4}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v4

    .line 278
    .local v4, "durationUs":J
    cmp-long v9, v4, v7

    if-eqz v9, :cond_2

    .line 279
    iget-object v9, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v10, Landroidx/media3/extractor/IndexSeekMap;

    iget-object v11, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 281
    invoke-virtual {v11}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->getKeyFrameTagPositions()[J

    move-result-object v11

    iget-object v12, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 282
    invoke-virtual {v12}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->getKeyFrameTimesUs()[J

    move-result-object v12

    invoke-direct {v10, v11, v12, v4, v5}, Landroidx/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    .line 279
    invoke-interface {v9, v10}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 284
    iput-boolean v6, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    .line 286
    .end local v4    # "durationUs":J
    :cond_2
    goto :goto_0

    .line 287
    :cond_3
    iget v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_0
    iget-boolean v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-nez v4, :cond_5

    if-eqz v1, :cond_5

    .line 291
    iput-boolean v6, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    .line 292
    nop

    .line 293
    iget-object v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v4}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-nez v4, :cond_4

    iget-wide v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    neg-long v4, v4

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x0

    :goto_1
    iput-wide v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    .line 295
    :cond_5
    const/4 v4, 0x4

    iput v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 296
    const/4 v4, 0x2

    iput v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    .line 297
    return v0
.end method

.method private readTagHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    return v1

    .line 247
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 248
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagType:I

    .line 249
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 250
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 251
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    iget-wide v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 252
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 253
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    .line 254
    return v3
.end method

.method private skipToTagHeader(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 231
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    .line 232
    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 137
    iput-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 138
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

    .line 159
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    :goto_0
    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 176
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->readTagData(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x0

    return v0

    .line 171
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->readTagHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    return v1

    .line 168
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->skipToTagHeader(Landroidx/media3/extractor/ExtractorInput;)V

    .line 169
    goto :goto_0

    .line 163
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->readFlvHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 154
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 142
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    .line 144
    iput-boolean v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    goto :goto_0

    .line 146
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    .line 148
    :goto_0
    iput v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 149
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 108
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 109
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    const v1, 0x464c56

    if-eq v0, v1, :cond_0

    .line 110
    return v2

    .line 114
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 115
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 116
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    .line 117
    return v2

    .line 121
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 122
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 123
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 125
    .local v0, "dataOffset":I
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 126
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 129
    iget-object v3, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-interface {p1, v3, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 130
    iget-object v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 132
    iget-object v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
