.class public final Landroidx/media3/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;,
        Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;,
        Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field private static final STATE_READING_FILE_TYPE:I = 0x0

.field private static final STATE_READING_FORMAT:I = 0x2

.field private static final STATE_READING_RF64_SAMPLE_DATA_SIZE:I = 0x1

.field private static final STATE_READING_SAMPLE_DATA:I = 0x4

.field private static final STATE_SKIPPING_TO_SAMPLE_DATA:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WavExtractor"

.field private static final TARGET_SAMPLES_PER_SECOND:I = 0xa


# instance fields
.field private dataEndPosition:J

.field private dataStartPosition:I

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

.field private rf64SampleDataSize:J

.field private state:I

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroidx/media3/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/wav/WavExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    .line 96
    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 97
    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 98
    return-void
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/wav/WavExtractor;

    invoke-direct {v1}, Landroidx/media3/extractor/wav/WavExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private readFileType(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 157
    iget v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 158
    iget v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 159
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    .line 160
    return-void

    .line 162
    :cond_1
    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->checkFileType(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 168
    iput v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    .line 169
    return-void

    .line 164
    :cond_2
    const-string v0, "Unsupported or unrecognized wav file type."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private readFormat(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 178
    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->readFormat(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/wav/WavFormat;

    move-result-object v3

    .line 179
    .local v3, "wavFormat":Landroidx/media3/extractor/wav/WavFormat;
    iget v0, v3, Landroidx/media3/extractor/wav/WavFormat;->formatType:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 180
    new-instance v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;)V

    iput-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_0

    .line 181
    :cond_0
    iget v0, v3, Landroidx/media3/extractor/wav/WavFormat;->formatType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 182
    new-instance v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const-string v4, "audio/g711-alaw"

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_0

    .line 189
    :cond_1
    iget v0, v3, Landroidx/media3/extractor/wav/WavFormat;->formatType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 190
    new-instance v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const-string v4, "audio/g711-mlaw"

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_0

    .line 199
    :cond_2
    iget v0, v3, Landroidx/media3/extractor/wav/WavFormat;->formatType:I

    iget v1, v3, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    .line 200
    invoke-static {v0, v1}, Landroidx/media3/extractor/WavUtil;->getPcmEncodingForType(II)I

    move-result v5

    .line 201
    .local v5, "pcmEncoding":I
    if-eqz v5, :cond_3

    .line 205
    new-instance v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const-string v4, "audio/raw"

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    .line 209
    .end local v5    # "pcmEncoding":I
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    .line 210
    return-void

    .line 202
    .restart local v5    # "pcmEncoding":I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported WAV format type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Landroidx/media3/extractor/wav/WavFormat;->formatType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private readRf64SampleDataSize(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 2
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->readRf64SampleDataSize(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    .line 173
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    .line 174
    return-void
.end method

.method private readSampleData(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 233
    iget-wide v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 234
    .local v2, "bytesLeft":J
    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-interface {v0, p1, v2, v3}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->sampleData(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const/4 v1, -0x1

    goto :goto_1

    .line 236
    :cond_1
    nop

    .line 234
    :goto_1
    return v1
.end method

.method private skipToSampleData(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 9
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->skipToSampleData(Landroidx/media3/extractor/ExtractorInput;)Landroid/util/Pair;

    move-result-object v0

    .line 214
    .local v0, "dataBounds":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 215
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 216
    .local v1, "dataSize":J
    iget-wide v3, p0, Landroidx/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 219
    iget-wide v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    .line 221
    :cond_0
    iget v3, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 222
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 223
    .local v3, "inputLength":J
    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    iget-wide v5, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_1

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data exceeds input length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WavExtractor"

    invoke-static {v6, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iput-wide v3, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 227
    :cond_1
    iget-object v5, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    iget v6, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    iget-wide v7, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {v5, v6, v7, v8}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->init(IJ)V

    .line 228
    const/4 v5, 0x4

    iput v5, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    .line 229
    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 107
    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 109
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 110
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

    .line 128
    invoke-direct {p0}, Landroidx/media3/extractor/wav/WavExtractor;->assertInitialized()V

    .line 129
    iget v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 143
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/media3/extractor/wav/WavExtractor;->readSampleData(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 140
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/wav/WavExtractor;->skipToSampleData(Landroidx/media3/extractor/ExtractorInput;)V

    .line 141
    return v1

    .line 137
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/wav/WavExtractor;->readFormat(Landroidx/media3/extractor/ExtractorInput;)V

    .line 138
    return v1

    .line 134
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/wav/WavExtractor;->readRf64SampleDataSize(Landroidx/media3/extractor/ExtractorInput;)V

    .line 135
    return v1

    .line 131
    :pswitch_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/wav/WavExtractor;->readFileType(Landroidx/media3/extractor/ExtractorInput;)V

    .line 132
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 123
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 114
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    .line 115
    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-interface {v0, p3, p4}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->reset(J)V

    .line 118
    :cond_1
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

    .line 102
    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->checkFileType(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
