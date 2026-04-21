.class final Landroidx/media3/extractor/flv/AudioTagPayloadReader;
.super Landroidx/media3/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final AAC_PACKET_TYPE_AAC_RAW:I = 0x1

.field private static final AAC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final AUDIO_FORMAT_AAC:I = 0xa

.field private static final AUDIO_FORMAT_ALAW:I = 0x7

.field private static final AUDIO_FORMAT_MP3:I = 0x2

.field private static final AUDIO_FORMAT_ULAW:I = 0x8

.field private static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field private audioFormat:I

.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    const/16 v0, 0x5622

    const v1, 0xac44

    const/16 v2, 0x1588

    const/16 v3, 0x2b11

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media3/extractor/TrackOutput;

    .line 46
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/TagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    .line 47
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

    .line 56
    iget-boolean v0, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 57
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 58
    .local v0, "header":I
    shr-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, 0xf

    iput v2, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    .line 59
    iget v2, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const-string/jumbo v3, "video/x-flv"

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 60
    shr-int/lit8 v2, v0, 0x2

    and-int/lit8 v2, v2, 0x3

    .line 61
    .local v2, "sampleRateIndex":I
    sget-object v4, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    aget v4, v4, v2

    .line 62
    .local v4, "sampleRate":I
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 64
    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 65
    const-string v5, "audio/mpeg"

    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    .line 69
    .local v3, "format":Landroidx/media3/common/Format;
    iget-object v5, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v5, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 70
    iput-boolean v1, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .line 71
    .end local v2    # "sampleRateIndex":I
    .end local v3    # "format":Landroidx/media3/common/Format;
    .end local v4    # "sampleRate":I
    goto :goto_3

    :cond_0
    iget v2, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v4, 0x7

    if-eq v2, v4, :cond_3

    iget v2, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    iget v2, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    :goto_0
    goto :goto_3

    .line 84
    :cond_2
    new-instance v1, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio format not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_3
    :goto_1
    iget v2, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    if-ne v2, v4, :cond_4

    const-string v2, "audio/g711-alaw"

    goto :goto_2

    :cond_4
    const-string v2, "audio/g711-mlaw"

    .line 74
    .local v2, "mimeType":Ljava/lang/String;
    :goto_2
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 76
    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 77
    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 78
    invoke-virtual {v3, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 79
    const/16 v4, 0x1f40

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    .line 81
    .restart local v3    # "format":Landroidx/media3/common/Format;
    iget-object v4, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v4, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 82
    iput-boolean v1, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "format":Landroidx/media3/common/Format;
    goto :goto_0

    .line 86
    :goto_3
    iput-boolean v1, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    .line 87
    .end local v0    # "header":I
    goto :goto_4

    .line 89
    :cond_5
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 91
    :goto_4
    return v1
.end method

.method protected parsePayload(Landroidx/media3/common/util/ParsableByteArray;J)Z
    .locals 19
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 97
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    .line 98
    .local v9, "sampleSize":I
    iget-object v2, v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v2, v1, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 99
    iget-object v5, v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    move-wide/from16 v6, p2

    invoke-interface/range {v5 .. v11}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 100
    return v4

    .line 102
    .end local v9    # "sampleSize":I
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 103
    .local v2, "packetType":I
    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v5, v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v5, :cond_1

    .line 105
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    new-array v5, v5, [B

    .line 106
    .local v5, "audioSpecificConfig":[B
    array-length v6, v5

    invoke-virtual {v1, v5, v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 107
    invoke-static {v5}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v6

    .line 108
    .local v6, "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 110
    const-string/jumbo v8, "video/x-flv"

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 111
    const-string v8, "audio/mp4a-latm"

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    iget-object v8, v6, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 112
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    iget v8, v6, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    .line 113
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    iget v8, v6, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 114
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 115
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 116
    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v7

    .line 117
    .local v7, "format":Landroidx/media3/common/Format;
    iget-object v8, v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v8, v7}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 118
    iput-boolean v4, v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .line 119
    return v3

    .line 120
    .end local v5    # "audioSpecificConfig":[B
    .end local v6    # "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    .end local v7    # "format":Landroidx/media3/common/Format;
    :cond_1
    iget v5, v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 126
    :cond_2
    return v3

    .line 121
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    .line 122
    .local v3, "sampleSize":I
    iget-object v5, v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v5, v1, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 123
    iget-object v12, v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x1

    move-wide/from16 v13, p2

    move/from16 v16, v3

    .end local v3    # "sampleSize":I
    .local v16, "sampleSize":I
    invoke-interface/range {v12 .. v18}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 124
    return v4
.end method

.method public seek()V
    .locals 0

    .line 52
    return-void
.end method
