.class final Landroidx/media3/extractor/ogg/OpusReader;
.super Landroidx/media3/extractor/ogg/StreamReader;
.source "OpusReader.java"


# static fields
.field private static final OPUS_COMMENT_HEADER_SIGNATURE:[B

.field private static final OPUS_ID_HEADER_SIGNATURE:[B


# instance fields
.field private firstCommentHeaderSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    .line 37
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/media3/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private static peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z
    .locals 4
    .param p0, "packet"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "expectedPrefix"    # [B

    .line 133
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 134
    return v2

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 137
    .local v0, "startPosition":I
    array-length v1, p1

    new-array v1, v1, [B

    .line 138
    .local v1, "header":[B
    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 139
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 140
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public static verifyBitstreamType(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 1
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 44
    sget-object v0, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    invoke-static {p0, v0}, Landroidx/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected preparePayload(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 2
    .param p1, "packet"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 57
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/container/OpusUtil;->getPacketDurationUs([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/ogg/OpusReader;->convertTimeToGranule(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected readHeaders(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/extractor/ogg/StreamReader$SetupData;)Z
    .locals 6
    .param p1, "packet"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "setupData"    # Landroidx/media3/extractor/ogg/StreamReader$SetupData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 64
    sget-object v0, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    invoke-static {p1, v0}, Landroidx/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 66
    .local v0, "headerBytes":[B
    invoke-static {v0}, Landroidx/media3/container/OpusUtil;->getChannelCount([B)I

    move-result v2

    .line 67
    .local v2, "channelCount":I
    invoke-static {v0}, Landroidx/media3/container/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v3

    .line 69
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v4, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    if-eqz v4, :cond_0

    .line 76
    return v1

    .line 78
    :cond_0
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 80
    const-string v5, "audio/ogg"

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 81
    const-string v5, "audio/opus"

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 82
    invoke-virtual {v4, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 83
    const v5, 0xbb80

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 84
    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    iput-object v4, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    .line 86
    return v1

    .line 87
    .end local v0    # "headerBytes":[B
    .end local v2    # "channelCount":I
    .end local v3    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    sget-object v0, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    invoke-static {p1, v0}, Landroidx/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-boolean v0, p0, Landroidx/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    if-eqz v0, :cond_2

    .line 97
    return v1

    .line 99
    :cond_2
    iput-boolean v1, p0, Landroidx/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    .line 100
    sget-object v0, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 101
    nop

    .line 102
    invoke-static {p1, v2, v2}, Landroidx/media3/extractor/VorbisUtil;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object v0

    .line 105
    .local v0, "commentHeader":Landroidx/media3/extractor/VorbisUtil$CommentHeader;
    iget-object v2, v0, Landroidx/media3/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 106
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v2

    .line 107
    .local v2, "vorbisMetadata":Landroidx/media3/common/Metadata;
    if-nez v2, :cond_3

    .line 108
    return v1

    .line 110
    :cond_3
    iget-object v3, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    .line 113
    invoke-virtual {v3}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget-object v4, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 114
    invoke-virtual {v2, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    iput-object v3, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    .line 116
    return v1

    .line 120
    .end local v0    # "commentHeader":Landroidx/media3/extractor/VorbisUtil$CommentHeader;
    .end local v2    # "vorbisMetadata":Landroidx/media3/common/Metadata;
    :cond_4
    iget-object v0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return v2
.end method

.method protected reset(Z)V
    .locals 1
    .param p1, "headerData"    # Z

    .line 49
    invoke-super {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->reset(Z)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    .line 53
    :cond_0
    return-void
.end method
