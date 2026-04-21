.class public final Landroidx/media3/extractor/ts/Id3Reader;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final TAG:Ljava/lang/String; = "Id3Reader"


# instance fields
.field private final containerMimeType:Ljava/lang/String;

.field private final id3Header:Landroidx/media3/common/util/ParsableByteArray;

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private sampleBytesRead:I

.field private sampleSize:I

.field private sampleTimeUs:J

.field private writingSample:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "containerMimeType"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->containerMimeType:Ljava/lang/String;

    .line 56
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    .line 57
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    .line 58
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 7
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 92
    iget-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 97
    .local v0, "bytesAvailable":I
    iget v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 99
    iget v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 100
    .local v1, "headerBytesAvailable":I
    nop

    .line 101
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 102
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    iget-object v5, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    .line 103
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    iget v6, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    .line 100
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 108
    iget-object v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 109
    iget-object v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/16 v5, 0x49

    if-ne v5, v3, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    .line 110
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/16 v5, 0x44

    if-ne v5, v3, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    .line 111
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/16 v5, 0x33

    if-eq v5, v3, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 117
    iget-object v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    goto :goto_1

    .line 112
    :cond_2
    :goto_0
    const-string v2, "Id3Reader"

    const-string v3, "Discarding invalid ID3 tag"

    invoke-static {v2, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput-boolean v4, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    .line 114
    return-void

    .line 121
    .end local v1    # "headerBytesAvailable":I
    :cond_3
    :goto_1
    iget v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    iget v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 122
    .local v1, "bytesToWrite":I
    iget-object v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v2, p1, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 123
    iget v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    .line 124
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 3
    .param p1, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 68
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 69
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 70
    iget-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 72
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->containerMimeType:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 74
    const-string v2, "application/id3"

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 70
    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 76
    return-void
.end method

.method public packetFinished(Z)V
    .locals 9
    .param p1, "isEndOfInput"    # Z

    .line 129
    iget-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    iget v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 135
    iget-object v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    iget v6, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v8}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 136
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    .line 137
    return-void

    .line 131
    :cond_2
    :goto_1
    return-void
.end method

.method public packetStarted(JI)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 80
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    .line 84
    iput-wide p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    .line 86
    iput v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    .line 87
    return-void
.end method

.method public seek()V
    .locals 2

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    .line 63
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    .line 64
    return-void
.end method
