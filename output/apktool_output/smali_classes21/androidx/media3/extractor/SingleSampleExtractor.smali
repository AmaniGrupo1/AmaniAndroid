.class public final Landroidx/media3/extractor/SingleSampleExtractor;
.super Ljava/lang/Object;
.source "SingleSampleExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field private static final FIXED_READ_LENGTH:I = 0x400

.field public static final IMAGE_TRACK_ID:I = 0x400

.field private static final STATE_ENDED:I = 0x2

.field private static final STATE_READING:I = 0x1


# instance fields
.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private final fileSignature:I

.field private final fileSignatureLength:I

.field private final sampleMimeType:Ljava/lang/String;

.field private size:I

.field private state:I

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "fileSignature"    # I
    .param p2, "fileSignatureLength"    # I
    .param p3, "sampleMimeType"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->fileSignature:I

    .line 79
    iput p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->fileSignatureLength:I

    .line 80
    iput-object p3, p0, Landroidx/media3/extractor/SingleSampleExtractor;->sampleMimeType:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private outputImageTrackAndSeekMap(Ljava/lang/String;)V
    .locals 4
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "this.extractorOutput"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 141
    iget-object v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 143
    invoke-virtual {v1, p1}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v1, p1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 141
    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 146
    iget-object v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 147
    iget-object v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media3/extractor/SingleSampleSeekMap;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SingleSampleSeekMap;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->state:I

    .line 149
    return-void
.end method

.method private readSegment(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 9
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 126
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/TrackOutput;

    const/16 v1, 0x400

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v0

    .line 127
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 128
    const/4 v1, 0x2

    iput v1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->state:I

    .line 129
    const/4 v5, 0x1

    .line 130
    .local v5, "flags":I
    iget-object v2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v6, p0, Landroidx/media3/extractor/SingleSampleExtractor;->size:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    invoke-interface/range {v2 .. v8}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 132
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->size:I

    .line 133
    .end local v5    # "flags":I
    goto :goto_0

    .line 134
    :cond_0
    iget v1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->size:I

    .line 136
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 1
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 93
    iput-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 94
    iget-object v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->sampleMimeType:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/media3/extractor/SingleSampleExtractor;->outputImageTrackAndSeekMap(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->state:I

    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 105
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 102
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->readSegment(Landroidx/media3/extractor/ExtractorInput;)V

    .line 103
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 122
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 113
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->state:I

    if-ne v0, v1, :cond_1

    .line 114
    :cond_0
    iput v1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->state:I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->size:I

    .line 117
    :cond_1
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->fileSignature:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->fileSignatureLength:I

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 86
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget v3, p0, Landroidx/media3/extractor/SingleSampleExtractor;->fileSignatureLength:I

    invoke-direct {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 87
    .local v0, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    iget v4, p0, Landroidx/media3/extractor/SingleSampleExtractor;->fileSignatureLength:I

    invoke-interface {p1, v3, v2, v4}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 88
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    iget v4, p0, Landroidx/media3/extractor/SingleSampleExtractor;->fileSignature:I

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method
