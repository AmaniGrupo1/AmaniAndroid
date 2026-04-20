.class final Landroidx/media3/extractor/flv/VideoTagPayloadReader;
.super Landroidx/media3/extractor/flv/TagPayloadReader;
.source "VideoTagPayloadReader.java"


# static fields
.field private static final AVC_PACKET_TYPE_AVC_NALU:I = 0x1

.field private static final AVC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final VIDEO_CODEC_AVC:I = 0x7

.field private static final VIDEO_FRAME_KEYFRAME:I = 0x1

.field private static final VIDEO_FRAME_VIDEO_INFO:I = 0x5


# instance fields
.field private frameType:I

.field private hasOutputFormat:Z

.field private hasOutputKeyframe:Z

.field private final nalLength:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field private nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/extractor/TrackOutput;

    .line 55
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/TagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    .line 56
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 57
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    .line 58
    return-void
.end method


# virtual methods
.method protected parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 6
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 68
    .local v0, "header":I
    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 69
    .local v1, "frameType":I
    and-int/lit8 v2, v0, 0xf

    .line 71
    .local v2, "videoCodec":I
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 74
    iput v1, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->frameType:I

    .line 75
    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 72
    :cond_1
    new-instance v3, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video format not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected parsePayload(Landroidx/media3/common/util/ParsableByteArray;J)Z
    .locals 12
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 81
    .local v0, "packetType":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt24()I

    move-result v1

    .line 83
    .local v1, "compositionTimeMs":I
    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long v5, p2, v2

    .line 85
    .end local p2    # "timeUs":J
    .local v5, "timeUs":J
    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    iget-boolean v2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 87
    .local v2, "videoSequence":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-virtual {p1, v3, p3, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 88
    invoke-static {v2}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v3

    .line 89
    .local v3, "avcConfig":Landroidx/media3/extractor/AvcConfig;
    iget v4, v3, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v4, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    .line 91
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 93
    const-string/jumbo v7, "video/x-flv"

    invoke-virtual {v4, v7}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 94
    const-string/jumbo v7, "video/avc"

    invoke-virtual {v4, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v7, v3, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 95
    invoke-virtual {v4, v7}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v7, v3, Landroidx/media3/extractor/AvcConfig;->width:I

    .line 96
    invoke-virtual {v4, v7}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v7, v3, Landroidx/media3/extractor/AvcConfig;->height:I

    .line 97
    invoke-virtual {v4, v7}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v7, v3, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    .line 98
    invoke-virtual {v4, v7}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v7, v3, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 99
    invoke-virtual {v4, v7}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 100
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    .line 101
    .local v4, "format":Landroidx/media3/common/Format;
    iget-object v7, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v7, v4}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 102
    iput-boolean p2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    .line 103
    return p3

    .line 104
    .end local v2    # "videoSequence":Landroidx/media3/common/util/ParsableByteArray;
    .end local v3    # "avcConfig":Landroidx/media3/extractor/AvcConfig;
    .end local v4    # "format":Landroidx/media3/common/Format;
    :cond_0
    if-ne v0, p2, :cond_5

    iget-boolean v2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-eqz v2, :cond_5

    .line 105
    iget v2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->frameType:I

    if-ne v2, p2, :cond_1

    move v2, p2

    goto :goto_0

    :cond_1
    move v2, p3

    .line 106
    .local v2, "isKeyframe":Z
    :goto_0
    iget-boolean v3, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 107
    return p3

    .line 112
    :cond_2
    iget-object v3, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 113
    .local v3, "nalLengthData":[B
    aput-byte p3, v3, p3

    .line 114
    aput-byte p3, v3, p2

    .line 115
    const/4 v4, 0x2

    aput-byte p3, v3, v4

    .line 116
    iget v4, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const/4 v7, 0x4

    rsub-int/lit8 v11, v4, 0x4

    .line 120
    .local v11, "nalUnitLengthFieldLengthDiff":I
    const/4 v4, 0x0

    move v8, v4

    .line 122
    .local v8, "bytesWritten":I
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_3

    .line 124
    iget-object v4, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    iget v9, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {p1, v4, v11, v9}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 125
    iget-object v4, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, p3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 126
    iget-object v4, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 129
    .local v4, "bytesToWrite":I
    iget-object v9, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v9, p3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 130
    iget-object v9, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v10, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v9, v10, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 131
    add-int/lit8 v8, v8, 0x4

    .line 134
    iget-object v9, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v9, p1, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 135
    add-int/2addr v8, v4

    goto :goto_1

    .line 137
    .end local v4    # "bytesToWrite":I
    :cond_3
    iget-object v4, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 138
    if-eqz v2, :cond_4

    move v7, p2

    goto :goto_2

    :cond_4
    move v7, p3

    .line 137
    :goto_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 139
    iput-boolean p2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    .line 140
    return p2

    .line 142
    .end local v2    # "isKeyframe":Z
    .end local v3    # "nalLengthData":[B
    .end local v8    # "bytesWritten":I
    .end local v11    # "nalUnitLengthFieldLengthDiff":I
    :cond_5
    return p3
.end method

.method public seek()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    .line 63
    return-void
.end method
