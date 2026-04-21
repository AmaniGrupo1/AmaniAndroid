.class public final Landroidx/media3/extractor/FlacMetadataReader;
.super Ljava/lang/Object;
.source "FlacMetadataReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;
    }
.end annotation


# static fields
.field private static final SEEK_POINT_SIZE:I = 0x12

.field private static final STREAM_MARKER:I = 0x664c6143

.field private static final SYNC_CODE:I = 0x3ffe


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndPeekStreamMarker(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 6
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 82
    .local v0, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 83
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    const-wide/32 v4, 0x664c6143

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static getFrameStartMarker(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 5
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 234
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 235
    .local v0, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 237
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 238
    .local v1, "frameStartMarker":I
    shr-int/lit8 v2, v1, 0x2

    .line 239
    .local v2, "syncCode":I
    const/16 v3, 0x3ffe

    if-ne v2, v3, :cond_0

    .line 245
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 246
    return v1

    .line 240
    :cond_0
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 241
    const-string v3, "First frame does not start with sync code."

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3
.end method

.method public static peekId3Metadata(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/common/Metadata;
    .locals 4
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "parseData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    .line 67
    .local v1, "id3FramePredicate":Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;
    :goto_0
    new-instance v2, Landroidx/media3/extractor/Id3Peeker;

    invoke-direct {v2}, Landroidx/media3/extractor/Id3Peeker;-><init>()V

    .line 68
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3}, Landroidx/media3/extractor/Id3Peeker;->peekId3Data(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;I)Landroidx/media3/common/Metadata;

    move-result-object v2

    .line 69
    .local v2, "id3Metadata":Landroidx/media3/common/Metadata;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/media3/common/Metadata;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static readId3Metadata(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/common/Metadata;
    .locals 5
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "parseData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 103
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    .line 104
    .local v0, "startingPeekPosition":J
    invoke-static {p0, p1}, Landroidx/media3/extractor/FlacMetadataReader;->peekId3Metadata(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/common/Metadata;

    move-result-object v2

    .line 105
    .local v2, "id3Metadata":Landroidx/media3/common/Metadata;
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v3, v3

    .line 106
    .local v3, "peekedId3Bytes":I
    invoke-interface {p0, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 107
    return-object v2
.end method

.method public static readMetadataBlock(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;)Z
    .locals 9
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "metadataHolder"    # Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 150
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v2, v1, [B

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 151
    .local v0, "scratch":Landroidx/media3/common/util/ParsableBitArray;
    iget-object v2, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 153
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 154
    .local v2, "isLastMetadataBlock":Z
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 155
    .local v4, "type":I
    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v1

    .line 156
    .local v5, "length":I
    if-nez v4, :cond_0

    .line 157
    invoke-static {p0}, Landroidx/media3/extractor/FlacMetadataReader;->readStreamInfoBlock(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/FlacStreamMetadata;

    move-result-object v1

    iput-object v1, p1, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    goto :goto_0

    .line 159
    :cond_0
    iget-object v6, p1, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 160
    .local v6, "flacStreamMetadata":Landroidx/media3/extractor/FlacStreamMetadata;
    if-eqz v6, :cond_4

    .line 163
    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 164
    invoke-static {p0, v5}, Landroidx/media3/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Landroidx/media3/extractor/ExtractorInput;I)Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    move-result-object v1

    .line 165
    .local v1, "seekTable":Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;
    invoke-virtual {v6, v1}, Landroidx/media3/extractor/FlacStreamMetadata;->copyWithSeekTable(Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;)Landroidx/media3/extractor/FlacStreamMetadata;

    move-result-object v3

    iput-object v3, p1, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 166
    .end local v1    # "seekTable":Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;
    goto :goto_0

    :cond_1
    if-ne v4, v1, :cond_2

    .line 167
    invoke-static {p0, v5}, Landroidx/media3/extractor/FlacMetadataReader;->readVorbisCommentMetadataBlock(Landroidx/media3/extractor/ExtractorInput;I)Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 169
    invoke-virtual {v6, v1}, Landroidx/media3/extractor/FlacStreamMetadata;->copyWithVorbisComments(Ljava/util/List;)Landroidx/media3/extractor/FlacStreamMetadata;

    move-result-object v3

    iput-object v3, p1, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 170
    .end local v1    # "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    :cond_2
    const/4 v7, 0x6

    if-ne v4, v7, :cond_3

    .line 171
    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v7, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 172
    .local v7, "pictureBlock":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    invoke-interface {p0, v8, v3, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 173
    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 174
    invoke-static {v7}, Landroidx/media3/extractor/metadata/flac/PictureFrame;->fromPictureBlock(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/flac/PictureFrame;

    move-result-object v1

    .line 175
    .local v1, "pictureFrame":Landroidx/media3/extractor/metadata/flac/PictureFrame;
    nop

    .line 176
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/media3/extractor/FlacStreamMetadata;->copyWithPictureFrames(Ljava/util/List;)Landroidx/media3/extractor/FlacStreamMetadata;

    move-result-object v3

    iput-object v3, p1, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 177
    .end local v1    # "pictureFrame":Landroidx/media3/extractor/metadata/flac/PictureFrame;
    .end local v7    # "pictureBlock":Landroidx/media3/common/util/ParsableByteArray;
    goto :goto_0

    .line 178
    :cond_3
    invoke-interface {p0, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 182
    .end local v6    # "flacStreamMetadata":Landroidx/media3/extractor/FlacStreamMetadata;
    :goto_0
    return v2

    .line 161
    .restart local v6    # "flacStreamMetadata":Landroidx/media3/extractor/FlacStreamMetadata;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static readSeekTableMetadataBlock(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;
    .locals 11
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 197
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 199
    .local v0, "length":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 200
    .local v1, "seekTableEndPosition":J
    div-int/lit8 v3, v0, 0x12

    .line 201
    .local v3, "seekPointCount":I
    new-array v4, v3, [J

    .line 202
    .local v4, "pointSampleNumbers":[J
    new-array v5, v3, [J

    .line 203
    .local v5, "pointOffsets":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 206
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v7

    .line 207
    .local v7, "sampleNumber":J
    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-nez v9, :cond_0

    .line 208
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 209
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 210
    goto :goto_1

    .line 212
    :cond_0
    aput-wide v7, v4, v6

    .line 213
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v9

    aput-wide v9, v5, v6

    .line 214
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 203
    .end local v7    # "sampleNumber":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 217
    .end local v6    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v1, v6

    long-to-int v6, v6

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 218
    new-instance v6, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    invoke-direct {v6, v4, v5}, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;-><init>([J[J)V

    return-object v6
.end method

.method private static readSeekTableMetadataBlock(Landroidx/media3/extractor/ExtractorInput;I)Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;
    .locals 3
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 259
    .local v0, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 260
    invoke-static {v0}, Landroidx/media3/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    move-result-object v1

    return-object v1
.end method

.method private static readStreamInfoBlock(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/FlacStreamMetadata;
    .locals 3
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const/16 v0, 0x26

    new-array v1, v0, [B

    .line 251
    .local v1, "scratchData":[B
    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 252
    new-instance v0, Landroidx/media3/extractor/FlacStreamMetadata;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>([BI)V

    return-object v0
.end method

.method public static readStreamMarker(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 5
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 121
    .local v0, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 122
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 126
    return-void

    .line 123
    :cond_0
    const-string v1, "Failed to read FLAC stream marker."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method

.method private static readVorbisCommentMetadataBlock(Landroidx/media3/extractor/ExtractorInput;I)Ljava/util/List;
    .locals 3
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/ExtractorInput;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 266
    .local v0, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 267
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 268
    nop

    .line 269
    invoke-static {v0, v2, v2}, Landroidx/media3/extractor/VorbisUtil;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object v1

    .line 271
    .local v1, "commentHeader":Landroidx/media3/extractor/VorbisUtil$CommentHeader;
    iget-object v2, v1, Landroidx/media3/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
