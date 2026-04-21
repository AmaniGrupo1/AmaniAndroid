.class public final Landroidx/media3/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private final containerMimeType:Ljava/lang/String;

.field private format:Landroidx/media3/common/Format;

.field private formatId:Ljava/lang/String;

.field private hasCRC:Z

.field private final headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

.field private final headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasAC:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private final roleFlags:I

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "containerMimeType"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "roleFlags"    # I
    .param p3, "containerMimeType"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

    .line 100
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v1, v1, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    .line 102
    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    .line 103
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 104
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 105
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    .line 106
    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 107
    iput p2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->roleFlags:I

    .line 108
    iput-object p3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->containerMimeType:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 2
    .param p1, "source"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 187
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 188
    .local v0, "bytesToRead":I
    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 189
    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    .line 190
    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private parseHeader()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 220
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

    invoke-static {v0}, Landroidx/media3/extractor/Ac4Util;->parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    move-result-object v0

    .line 221
    .local v0, "frameInfo":Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    const-string v2, "audio/ac4"

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->channelCount:I

    iget-object v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    iget v3, v3, Landroidx/media3/common/Format;->channelCount:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleRate:I

    iget-object v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    iget v3, v3, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    :cond_0
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 227
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->containerMimeType:Ljava/lang/String;

    .line 228
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 230
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 231
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 232
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->roleFlags:I

    .line 233
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    .line 235
    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    invoke-interface {v1, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 237
    :cond_1
    iget v1, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleSize:I

    .line 240
    iget v1, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleCount:I

    int-to-long v1, v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    iget-object v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    iget v3, v3, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleDurationUs:J

    .line 241
    return-void
.end method

.method private skipToNextSync(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 5
    .param p1, "pesBuffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 201
    nop

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    .line 202
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 203
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 204
    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 207
    .local v0, "secondByte":I
    if-ne v0, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 208
    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_3

    goto :goto_2

    .line 212
    .end local v0    # "secondByte":I
    :cond_3
    goto :goto_0

    .line 209
    .restart local v0    # "secondByte":I
    :cond_4
    :goto_2
    if-ne v0, v4, :cond_5

    move v1, v3

    :cond_5
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 210
    return v3

    .line 213
    .end local v0    # "secondByte":I
    :cond_6
    return v1
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 11
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 135
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_3

    .line 137
    iget v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 167
    goto :goto_0

    .line 155
    :pswitch_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleSize:I

    iget v4, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 156
    .local v0, "bytesToRead":I
    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 157
    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    .line 158
    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    iget v4, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v1, v4, :cond_0

    .line 160
    iget-wide v4, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 161
    iget-object v4, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v5, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    iget v8, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleSize:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 162
    iget-wide v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v4, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    .line 163
    iput v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 147
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v2}, Landroidx/media3/extractor/ts/Ac4Reader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac4Reader;->parseHeader()V

    .line 149
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 150
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v0, v3, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 151
    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 139
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/Ac4Reader;->skipToNextSync(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iput v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    .line 141
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v4, -0x54

    aput-byte v4, v0, v3

    .line 142
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-boolean v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x41

    goto :goto_2

    :cond_2
    const/16 v3, 0x40

    :goto_2
    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 143
    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_0

    .line 170
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 122
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 123
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 124
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 125
    return-void
.end method

.method public packetFinished(Z)V
    .locals 0
    .param p1, "isEndOfInput"    # Z

    .line 175
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 129
    iput-wide p1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    .line 130
    return-void
.end method

.method public seek()V
    .locals 2

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    .line 114
    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    .line 115
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 116
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 117
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    .line 118
    return-void
.end method
