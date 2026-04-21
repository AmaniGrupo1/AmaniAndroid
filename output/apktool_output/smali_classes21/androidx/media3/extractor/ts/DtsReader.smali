.class public final Landroidx/media3/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final CORE_HEADER_SIZE:I = 0x12

.field static final EXTSS_HEADER_SIZE_MAX:I = 0x1000

.field static final FTOC_MAX_HEADER_SIZE:I = 0x1520

.field private static final STATE_FINDING_EXTSS_HEADER_SIZE:I = 0x2

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_FINDING_UHD_HEADER_SIZE:I = 0x4

.field private static final STATE_READING_CORE_HEADER:I = 0x1

.field private static final STATE_READING_EXTSS_HEADER:I = 0x3

.field private static final STATE_READING_SAMPLE:I = 0x6

.field private static final STATE_READING_UHD_HEADER:I = 0x5


# instance fields
.field private bytesRead:I

.field private final containerMimeType:Ljava/lang/String;

.field private extensionSubstreamHeaderSize:I

.field private format:Landroidx/media3/common/Format;

.field private formatId:Ljava/lang/String;

.field private frameType:I

.field private final headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private final roleFlags:I

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private syncBytes:I

.field private timeUs:J

.field private final uhdAudioChunkId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private uhdHeaderSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "roleFlags"    # I
    .param p3, "maxHeaderSize"    # I
    .param p4, "containerMimeType"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    new-array v1, p3, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    .line 110
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->uhdAudioChunkId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->extensionSubstreamHeaderSize:I

    .line 113
    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->uhdHeaderSize:I

    .line 114
    iput-object p1, p0, Landroidx/media3/extractor/ts/DtsReader;->language:Ljava/lang/String;

    .line 115
    iput p2, p0, Landroidx/media3/extractor/ts/DtsReader;->roleFlags:I

    .line 116
    iput-object p4, p0, Landroidx/media3/extractor/ts/DtsReader;->containerMimeType:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 2
    .param p1, "source"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 241
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 242
    .local v0, "bytesToRead":I
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 243
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 244
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private parseCoreHeader()V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    .line 277
    .local v1, "frameData":[B
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    .line 278
    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/extractor/ts/DtsReader;->language:Ljava/lang/String;

    iget v4, p0, Landroidx/media3/extractor/ts/DtsReader;->roleFlags:I

    iget-object v5, p0, Landroidx/media3/extractor/ts/DtsReader;->containerMimeType:Ljava/lang/String;

    .line 279
    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/media3/extractor/DtsUtil;->parseDtsFormat([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    .line 280
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    invoke-interface {v0, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 282
    :cond_0
    invoke-static {v1}, Landroidx/media3/extractor/DtsUtil;->getDtsFrameSize([B)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    .line 285
    nop

    .line 288
    invoke-static {v1}, Landroidx/media3/extractor/DtsUtil;->parseDtsAudioSampleCount([B)I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    .line 287
    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v2

    .line 286
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    .line 289
    return-void
.end method

.method private parseExtensionSubstreamHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/DtsUtil;->parseDtsHdHeader([B)Landroidx/media3/extractor/DtsUtil$DtsHeader;

    move-result-object v0

    .line 295
    .local v0, "dtsHeader":Landroidx/media3/extractor/DtsUtil$DtsHeader;
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DtsReader;->updateFormatWithDtsHeaderInfo(Landroidx/media3/extractor/DtsUtil$DtsHeader;)V

    .line 296
    iget v1, v0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->frameSize:I

    iput v1, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    .line 297
    iget-wide v1, v0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->frameDurationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->frameDurationUs:J

    :goto_0
    iput-wide v1, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    .line 298
    return-void
.end method

.method private parseUhdHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 304
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->uhdAudioChunkId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1}, Landroidx/media3/extractor/DtsUtil;->parseDtsUhdHeader([BLjava/util/concurrent/atomic/AtomicInteger;)Landroidx/media3/extractor/DtsUtil$DtsHeader;

    move-result-object v0

    .line 306
    .local v0, "dtsHeader":Landroidx/media3/extractor/DtsUtil$DtsHeader;
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->frameType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 307
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DtsReader;->updateFormatWithDtsHeaderInfo(Landroidx/media3/extractor/DtsUtil$DtsHeader;)V

    .line 309
    :cond_0
    iget v1, v0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->frameSize:I

    iput v1, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    .line 310
    iget-wide v1, v0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->frameDurationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    iget-wide v1, v0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->frameDurationUs:J

    :goto_0
    iput-wide v1, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    .line 311
    return-void
.end method

.method private skipToNextSyncWord(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 5
    .param p1, "pesBuffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 255
    nop

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 256
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    .line 257
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    .line 258
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    invoke-static {v0}, Landroidx/media3/extractor/DtsUtil;->getFrameType(I)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->frameType:I

    .line 259
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->frameType:I

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 261
    .local v0, "headerData":[B
    iget v2, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 262
    iget v2, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 263
    iget v2, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v0, v4

    .line 264
    iget v2, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v0, v4

    .line 265
    const/4 v2, 0x4

    iput v2, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 266
    iput v1, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    .line 267
    return v3

    .line 270
    .end local v0    # "headerData":[B
    :cond_1
    return v1
.end method

.method private updateFormatWithDtsHeaderInfo(Landroidx/media3/extractor/DtsUtil$DtsHeader;)V
    .locals 3
    .param p1, "dtsHeader"    # Landroidx/media3/extractor/DtsUtil$DtsHeader;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 315
    iget v0, p1, Landroidx/media3/extractor/DtsUtil$DtsHeader;->sampleRate:I

    const v1, -0x7fffffff

    if-eq v0, v1, :cond_4

    iget v0, p1, Landroidx/media3/extractor/DtsUtil$DtsHeader;->channelCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 318
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    if-eqz v0, :cond_1

    iget v0, p1, Landroidx/media3/extractor/DtsUtil$DtsHeader;->channelCount:I

    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->channelCount:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroidx/media3/extractor/DtsUtil$DtsHeader;->sampleRate:I

    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroidx/media3/extractor/DtsUtil$DtsHeader;->mimeType:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 321
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 323
    .local v0, "formatBuilder":Landroidx/media3/common/Format$Builder;
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 325
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->containerMimeType:Ljava/lang/String;

    .line 326
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/media3/extractor/DtsUtil$DtsHeader;->mimeType:Ljava/lang/String;

    .line 327
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p1, Landroidx/media3/extractor/DtsUtil$DtsHeader;->channelCount:I

    .line 328
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p1, Landroidx/media3/extractor/DtsUtil$DtsHeader;->sampleRate:I

    .line 329
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->language:Ljava/lang/String;

    .line 330
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/extractor/ts/DtsReader;->roleFlags:I

    .line 331
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    .line 333
    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    invoke-interface {v1, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 335
    .end local v0    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    :cond_3
    return-void

    .line 316
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 13
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_7

    .line 145
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 204
    :pswitch_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    iget v4, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 205
    .local v0, "bytesToRead":I
    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 206
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 207
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    iget v4, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    if-ne v1, v4, :cond_0

    .line 209
    iget-wide v6, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 210
    iget-object v6, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v7, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    .line 212
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->frameType:I

    if-ne v1, v2, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    iget v10, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    .line 210
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 216
    iget-wide v1, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    iget-wide v3, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    .line 217
    iput v5, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 196
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->uhdHeaderSize:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/ts/DtsReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Landroidx/media3/extractor/ts/DtsReader;->parseUhdHeader()V

    .line 198
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 199
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    iget v2, p0, Landroidx/media3/extractor/ts/DtsReader;->uhdHeaderSize:I

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 200
    iput v4, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    .line 184
    :pswitch_2
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, v4}, Landroidx/media3/extractor/ts/DtsReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/DtsUtil;->parseDtsUhdHeaderSize([B)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->uhdHeaderSize:I

    .line 187
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->uhdHeaderSize:I

    if-le v0, v1, :cond_3

    .line 188
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->uhdHeaderSize:I

    sub-int/2addr v0, v1

    .line 189
    .local v0, "extraBytes":I
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 190
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 192
    .end local v0    # "extraBytes":I
    :cond_3
    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    .line 175
    :pswitch_3
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->extensionSubstreamHeaderSize:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/ts/DtsReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Landroidx/media3/extractor/ts/DtsReader;->parseExtensionSubstreamHeader()V

    .line 177
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 178
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    iget v2, p0, Landroidx/media3/extractor/ts/DtsReader;->extensionSubstreamHeaderSize:I

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 179
    iput v4, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    .line 168
    :pswitch_4
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v2}, Landroidx/media3/extractor/ts/DtsReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 170
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/DtsUtil;->parseDtsHdHeaderSize([B)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->extensionSubstreamHeaderSize:I

    .line 171
    iput v1, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    .line 159
    :pswitch_5
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/ts/DtsReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Landroidx/media3/extractor/ts/DtsReader;->parseCoreHeader()V

    .line 161
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 162
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v0, v2, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 163
    iput v4, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    .line 147
    :pswitch_6
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/DtsReader;->skipToNextSyncWord(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->frameType:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->frameType:I

    if-ne v0, v2, :cond_4

    goto :goto_3

    .line 151
    :cond_4
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->frameType:I

    if-ne v0, v3, :cond_5

    .line 152
    iput v3, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    .line 154
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    .line 150
    :cond_6
    :goto_3
    iput v2, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    .line 224
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 130
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 131
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 132
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 133
    return-void
.end method

.method public packetFinished(Z)V
    .locals 0
    .param p1, "isEndOfInput"    # Z

    .line 229
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 137
    iput-wide p1, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    .line 138
    return-void
.end method

.method public seek()V
    .locals 3

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    .line 122
    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 123
    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    .line 124
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    .line 125
    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->uhdAudioChunkId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 126
    return-void
.end method
