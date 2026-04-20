.class final Landroidx/media3/extractor/ogg/VorbisReader;
.super Landroidx/media3/extractor/ogg/StreamReader;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# instance fields
.field private commentHeader:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

.field private previousPacketBlockSize:I

.field private seenFirstAudioPacket:Z

.field private vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

.field private vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/media3/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static appendNumberOfSamples(Landroidx/media3/common/util/ParsableByteArray;J)V
    .locals 6
    .param p0, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "packetSampleCount"    # J

    .line 178
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    .line 179
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 185
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 186
    .local v0, "data":[B
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 187
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 188
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 189
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 190
    return-void
.end method

.method private static decodeBlockSize(BLandroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;)I
    .locals 2
    .param p0, "firstByteOfAudioPacket"    # B
    .param p1, "vorbisSetup"    # Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    .line 194
    iget v0, p1, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/ogg/VorbisReader;->readBits(BII)I

    move-result v0

    .line 196
    .local v0, "modeNumber":I
    iget-object v1, p1, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Landroidx/media3/extractor/VorbisUtil$Mode;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/media3/extractor/VorbisUtil$Mode;->blockFlag:Z

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p1, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    iget v1, v1, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    .local v1, "currentBlockSize":I
    goto :goto_0

    .line 199
    .end local v1    # "currentBlockSize":I
    :cond_0
    iget-object v1, p1, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    iget v1, v1, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize1:I

    .line 201
    .restart local v1    # "currentBlockSize":I
    :goto_0
    return v1
.end method

.method static readBits(BII)I
    .locals 3
    .param p0, "src"    # B
    .param p1, "length"    # I
    .param p2, "leastSignificantBitIndex"    # I

    .line 172
    shr-int v0, p0, p2

    rsub-int/lit8 v1, p1, 0x8

    const/16 v2, 0xff

    ushr-int v1, v2, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public static verifyBitstreamType(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 2
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 47
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p0, v0}, Landroidx/media3/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    move-result v0
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroidx/media3/common/ParserException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected onSeekEnd(J)V
    .locals 2
    .param p1, "currentGranule"    # J

    .line 67
    invoke-super {p0, p1, p2}, Landroidx/media3/extractor/ogg/StreamReader;->onSeekEnd(J)V

    .line 68
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 69
    iget-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    iget v1, v0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    :cond_1
    iput v1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 70
    return-void
.end method

.method protected preparePayload(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 5
    .param p1, "packet"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 75
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 76
    const-wide/16 v0, -0x1

    return-wide v0

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    aget-byte v0, v0, v1

    iget-object v3, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v0, v3}, Landroidx/media3/extractor/ogg/VorbisReader;->decodeBlockSize(BLandroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;)I

    move-result v0

    .line 84
    .local v0, "packetBlockSize":I
    iget-boolean v3, p0, Landroidx/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v3, :cond_1

    iget v1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    .line 86
    .local v1, "samplesInPacket":I
    :cond_1
    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Landroidx/media3/extractor/ogg/VorbisReader;->appendNumberOfSamples(Landroidx/media3/common/util/ParsableByteArray;J)V

    .line 89
    iput-boolean v2, p0, Landroidx/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 90
    iput v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 91
    int-to-long v2, v1

    return-wide v2
.end method

.method protected readHeaders(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/extractor/ogg/StreamReader$SetupData;)Z
    .locals 7
    .param p1, "packet"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "setupData"    # Landroidx/media3/extractor/ogg/StreamReader$SetupData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/ogg/VorbisReader;->readSetupHeaders(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    .line 104
    iget-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 105
    return v1

    .line 107
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    .line 109
    .local v0, "vorbisSetup":Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;
    iget-object v2, v0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    .line 111
    .local v2, "idHeader":Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v3, "codecInitializationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v4, v2, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v4, v0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v4, v0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    iget-object v4, v4, Landroidx/media3/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 117
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v4

    .line 119
    .local v4, "metadata":Landroidx/media3/common/Metadata;
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 121
    const-string v6, "audio/ogg"

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 122
    const-string v6, "audio/vorbis"

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v2, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    .line 123
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v2, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateMaximum:I

    .line 124
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v2, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    .line 125
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v2, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->sampleRate:I

    .line 126
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 127
    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 128
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 129
    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    iput-object v5, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    .line 130
    return v1
.end method

.method readSetupHeaders(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;
    .locals 8
    .param p1, "scratch"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    invoke-static {p1}, Landroidx/media3/extractor/VorbisUtil;->readVorbisIdentificationHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    .line 139
    return-object v1

    .line 142
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    if-nez v0, :cond_1

    .line 143
    invoke-static {p1}, Landroidx/media3/extractor/VorbisUtil;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    .line 144
    return-object v1

    .line 146
    :cond_1
    iget-object v3, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    .line 147
    .local v3, "vorbisIdHeader":Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;
    iget-object v4, p0, Landroidx/media3/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    .line 150
    .local v4, "commentHeader":Landroidx/media3/extractor/VorbisUtil$CommentHeader;
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    new-array v5, v0, [B

    .line 152
    .local v5, "setupHeaderData":[B
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget v0, v3, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    invoke-static {p1, v0}, Landroidx/media3/extractor/VorbisUtil;->readVorbisModes(Landroidx/media3/common/util/ParsableByteArray;I)[Landroidx/media3/extractor/VorbisUtil$Mode;

    move-result-object v6

    .line 156
    .local v6, "modes":[Landroidx/media3/extractor/VorbisUtil$Mode;
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Landroidx/media3/extractor/VorbisUtil;->iLog(I)I

    move-result v7

    .line 158
    .local v7, "iLogModes":I
    new-instance v2, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-direct/range {v2 .. v7}, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;Landroidx/media3/extractor/VorbisUtil$CommentHeader;[B[Landroidx/media3/extractor/VorbisUtil$Mode;I)V

    return-object v2
.end method

.method protected reset(Z)V
    .locals 1
    .param p1, "headerData"    # Z

    .line 55
    invoke-super {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->reset(Z)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    .line 58
    iput-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    .line 59
    iput-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 62
    iput-boolean v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 63
    return-void
.end method
