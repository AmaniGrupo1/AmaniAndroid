.class public final Landroidx/media3/extractor/Id3Peeker;
.super Ljava/lang/Object;
.source "Id3Peeker.java"


# instance fields
.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 42
    return-void
.end method

.method private peekId3HeaderIntoScratch(Landroidx/media3/extractor/ExtractorInput;I)Z
    .locals 8
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "maxTagPeekBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "tagSearchBytes":I
    :cond_0
    rem-int/lit8 v1, v0, 0xa

    .line 115
    .local v1, "headerStartIndexInScratch":I
    add-int/lit8 v2, v1, 0xa

    .line 116
    .local v2, "headerEndIndexInScratch":I
    const/4 v3, 0x0

    const/16 v4, 0xa

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 119
    iget-object v5, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 120
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    .line 119
    const/16 v7, 0x9

    invoke-static {v5, v4, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    :cond_1
    const/4 v5, 0x1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    .line 124
    .local v4, "peekLength":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 125
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    sub-int v7, v2, v4

    .line 124
    invoke-interface {p1, v6, v7, v4}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    nop

    .line 129
    iget-object v6, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 130
    iget-object v6, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 131
    iget-object v6, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedInt24()I

    move-result v6

    const v7, 0x494433

    if-ne v6, v7, :cond_3

    .line 132
    return v5

    .line 133
    :cond_3
    iget-object v5, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->peekInt()I

    move-result v5

    invoke-static {v5}, Landroidx/media3/extractor/MpegAudioUtil;->getFrameSize(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 135
    return v3

    .line 140
    :cond_4
    if-nez v0, :cond_5

    .line 141
    iget-object v5, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    .line 143
    :cond_5
    nop

    .end local v1    # "headerStartIndexInScratch":I
    .end local v2    # "headerEndIndexInScratch":I
    .end local v4    # "peekLength":I
    add-int/lit8 v0, v0, 0x1

    .line 144
    if-le v0, p2, :cond_0

    .line 145
    return v3

    .line 126
    .restart local v1    # "headerStartIndexInScratch":I
    .restart local v2    # "headerEndIndexInScratch":I
    .restart local v4    # "peekLength":I
    :catch_0
    move-exception v5

    .line 127
    .local v5, "e":Ljava/io/EOFException;
    return v3
.end method


# virtual methods
.method public peekId3Data(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/common/Metadata;
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "id3FramePredicate"    # Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/extractor/Id3Peeker;->peekId3Data(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;I)Landroidx/media3/common/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public peekId3Data(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;I)Landroidx/media3/common/Metadata;
    .locals 9
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "id3FramePredicate"    # Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;
    .param p3, "maxTagPeekBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "peekedId3Bytes":I
    const/4 v1, 0x0

    .line 76
    .local v1, "metadata":Landroidx/media3/common/Metadata;
    :goto_0
    invoke-direct {p0, p1, p3}, Landroidx/media3/extractor/Id3Peeker;->peekId3HeaderIntoScratch(Landroidx/media3/extractor/ExtractorInput;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 78
    .local v2, "id3HeaderStartInScratch":I
    iget-object v3, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 79
    iget-object v3, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    .line 80
    .local v3, "framesLength":I
    add-int/lit8 v4, v3, 0xa

    .line 82
    .local v4, "tagLength":I
    if-nez v1, :cond_0

    .line 83
    new-array v5, v4, [B

    .line 84
    .local v5, "id3Data":[B
    iget-object v6, p0, Landroidx/media3/extractor/Id3Peeker;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-static {v6, v2, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    invoke-interface {p1, v5, v8, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 87
    new-instance v6, Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    invoke-direct {v6, p2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;-><init>(Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)V

    invoke-virtual {v6, v5, v4}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decode([BI)Landroidx/media3/common/Metadata;

    move-result-object v1

    .line 88
    .end local v5    # "id3Data":[B
    goto :goto_1

    .line 89
    :cond_0
    invoke-interface {p1, v3}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 92
    :goto_1
    add-int/2addr v0, v4

    .line 93
    .end local v2    # "id3HeaderStartInScratch":I
    .end local v3    # "framesLength":I
    .end local v4    # "tagLength":I
    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 96
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 97
    return-object v1
.end method
