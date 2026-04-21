.class public final Landroidx/media3/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final CRC_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x5

.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final ID3_IDENTIFIER:[B

.field private static final ID3_SIZE_OFFSET:I = 0x6

.field private static final MATCH_STATE_FF:I = 0x200

.field private static final MATCH_STATE_I:I = 0x300

.field private static final MATCH_STATE_ID:I = 0x400

.field private static final MATCH_STATE_START:I = 0x100

.field private static final MATCH_STATE_VALUE_SHIFT:I = 0x8

.field private static final STATE_CHECKING_ADTS_HEADER:I = 0x1

.field private static final STATE_FINDING_SAMPLE:I = 0x0

.field private static final STATE_READING_ADTS_HEADER:I = 0x3

.field private static final STATE_READING_ID3_HEADER:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AdtsReader"

.field private static final VERSION_UNSET:I = -0x1


# instance fields
.field private final adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

.field private bytesRead:I

.field private final containerMimeType:Ljava/lang/String;

.field private currentFrameVersion:I

.field private currentOutput:Landroidx/media3/extractor/TrackOutput;

.field private currentSampleDuration:J

.field private final exposeId3:Z

.field private firstFrameSampleRateIndex:I

.field private firstFrameVersion:I

.field private formatId:Ljava/lang/String;

.field private foundFirstFrame:Z

.field private hasCrc:Z

.field private hasOutputFormat:Z

.field private final id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private id3Output:Landroidx/media3/extractor/TrackOutput;

.field private final language:Ljava/lang/String;

.field private matchState:I

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private final roleFlags:I

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2
    .param p1, "exposeId3"    # Z
    .param p2, "containerMimeType"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/media3/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "exposeId3"    # Z
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "roleFlags"    # I
    .param p4, "containerMimeType"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 126
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 128
    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 129
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 130
    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    .line 131
    iput-boolean p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->exposeId3:Z

    .line 132
    iput-object p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 133
    iput p3, p0, Landroidx/media3/extractor/ts/AdtsReader;->roleFlags:I

    .line 134
    iput-object p4, p0, Landroidx/media3/extractor/ts/AdtsReader;->containerMimeType:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 136
    return-void
.end method

.method private assertTracksCreated()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "currentOutput",
            "id3Output"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    return-void
.end method

.method private checkAdtsHeader(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 346
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    aget-byte v1, v1, v2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 353
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 354
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 355
    .local v0, "currentFrameSampleRateIndex":I
    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v0, v1, :cond_1

    .line 358
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->resetSync()V

    .line 359
    return-void

    .line 362
    :cond_1
    iget-boolean v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v1, :cond_2

    .line 363
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 364
    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentFrameVersion:I

    iput v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 365
    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 367
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 368
    return-void
.end method

.method private checkSyncPositionValid(Landroidx/media3/common/util/ParsableByteArray;I)Z
    .locals 9
    .param p1, "pesBuffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "syncPositionCandidate"    # I

    .line 393
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 394
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/ts/AdtsReader;->tryRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 395
    return v2

    .line 399
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 400
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 401
    .local v0, "currentFrameVersion":I
    iget v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    if-eq v0, v4, :cond_1

    .line 402
    return v2

    .line 406
    :cond_1
    iget v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v4, v5, :cond_4

    .line 407
    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v4, v4, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v1}, Landroidx/media3/extractor/ts/AdtsReader;->tryRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v4

    if-nez v4, :cond_2

    .line 409
    return v1

    .line 411
    :cond_2
    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 412
    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 413
    .local v4, "currentFrameSampleRateIndex":I
    iget v6, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v4, v6, :cond_3

    .line 414
    return v2

    .line 416
    :cond_3
    add-int/lit8 v6, p2, 0x2

    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 420
    .end local v4    # "currentFrameSampleRateIndex":I
    :cond_4
    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v4, v4, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v3}, Landroidx/media3/extractor/ts/AdtsReader;->tryRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v3

    if-nez v3, :cond_5

    .line 422
    return v1

    .line 424
    :cond_5
    iget-object v3, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 425
    iget-object v3, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 426
    .local v3, "frameSize":I
    const/4 v4, 0x7

    if-ge v3, v4, :cond_6

    .line 427
    return v2

    .line 432
    :cond_6
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 433
    .local v4, "data":[B
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v6

    .line 434
    .local v6, "dataLimit":I
    add-int v7, p2, v3

    .line 435
    .local v7, "nextSyncPosition":I
    if-lt v7, v6, :cond_7

    .line 437
    return v1

    .line 439
    :cond_7
    aget-byte v8, v4, v7

    if-ne v8, v5, :cond_a

    .line 440
    add-int/lit8 v8, v7, 0x1

    if-ne v8, v6, :cond_8

    .line 442
    return v1

    .line 444
    :cond_8
    add-int/lit8 v8, v7, 0x1

    aget-byte v8, v4, v8

    invoke-direct {p0, v5, v8}, Landroidx/media3/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v5, v7, 0x1

    aget-byte v5, v4, v5

    and-int/lit8 v5, v5, 0x8

    shr-int/lit8 v5, v5, 0x3

    if-ne v5, v0, :cond_9

    goto :goto_0

    :cond_9
    move v1, v2

    :goto_0
    return v1

    .line 447
    :cond_a
    aget-byte v5, v4, v7

    const/16 v8, 0x49

    if-eq v5, v8, :cond_b

    .line 448
    return v2

    .line 450
    :cond_b
    add-int/lit8 v5, v7, 0x1

    if-ne v5, v6, :cond_c

    .line 452
    return v1

    .line 454
    :cond_c
    add-int/lit8 v5, v7, 0x1

    aget-byte v5, v4, v5

    const/16 v8, 0x44

    if-eq v5, v8, :cond_d

    .line 455
    return v2

    .line 457
    :cond_d
    add-int/lit8 v5, v7, 0x2

    if-ne v5, v6, :cond_e

    .line 459
    return v1

    .line 461
    :cond_e
    add-int/lit8 v5, v7, 0x2

    aget-byte v5, v4, v5

    const/16 v8, 0x33

    if-ne v5, v8, :cond_f

    goto :goto_1

    :cond_f
    move v1, v2

    :goto_1
    return v1
.end method

.method private continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 2
    .param p1, "source"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 233
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 234
    .local v0, "bytesToRead":I
    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 235
    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    .line 236
    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private findNextSample(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 7
    .param p1, "pesBuffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 293
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 294
    .local v0, "adtsData":[B
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 295
    .local v1, "position":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    .line 296
    .local v2, "endOffset":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 297
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "position":I
    .local v3, "position":I
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 298
    .local v1, "data":I
    iget v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    const/16 v5, 0x200

    if-ne v4, v5, :cond_3

    int-to-byte v4, v1

    const/4 v6, -0x1

    invoke-direct {p0, v6, v4}, Landroidx/media3/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 299
    iget-boolean v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, -0x2

    .line 300
    invoke-direct {p0, p1, v4}, Landroidx/media3/extractor/ts/AdtsReader;->checkSyncPositionValid(Landroidx/media3/common/util/ParsableByteArray;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    :cond_0
    and-int/lit8 v4, v1, 0x8

    shr-int/lit8 v4, v4, 0x3

    iput v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentFrameVersion:I

    .line 302
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->hasCrc:Z

    .line 303
    iget-boolean v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v4, :cond_2

    .line 304
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setCheckingAdtsHeaderState()V

    goto :goto_2

    .line 306
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 308
    :goto_2
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 309
    return-void

    .line 313
    :cond_3
    iget v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    or-int/2addr v4, v1

    sparse-switch v4, :sswitch_data_0

    .line 328
    iget v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    const/16 v5, 0x100

    if-eq v4, v5, :cond_4

    .line 331
    iput v5, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    .line 332
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_4

    .line 324
    :sswitch_0
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 325
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 326
    return-void

    .line 321
    :sswitch_1
    const/16 v4, 0x400

    iput v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    .line 322
    goto :goto_3

    .line 315
    :sswitch_2
    iput v5, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    .line 316
    goto :goto_3

    .line 318
    :sswitch_3
    const/16 v4, 0x300

    iput v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    .line 319
    nop

    .line 336
    .end local v1    # "data":I
    :cond_4
    :goto_3
    move v1, v3

    .end local v3    # "position":I
    .local v1, "position":I
    :goto_4
    goto :goto_0

    .line 337
    :cond_5
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 338
    return-void

    :sswitch_data_0
    .sparse-switch
        0x149 -> :sswitch_3
        0x1ff -> :sswitch_2
        0x344 -> :sswitch_1
        0x433 -> :sswitch_0
    .end sparse-switch
.end method

.method private isAdtsSyncBytes(BB)Z
    .locals 2
    .param p1, "firstByte"    # B
    .param p2, "secondByte"    # B

    .line 466
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    .line 467
    .local v0, "syncWord":I
    invoke-static {v0}, Landroidx/media3/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v1

    return v1
.end method

.method public static isAdtsSyncWord(I)Z
    .locals 2
    .param p0, "candidateSyncWord"    # I

    .line 140
    const v0, 0xfff6

    and-int/2addr v0, p0

    const v1, 0xfff0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseAdtsHeader()V
    .locals 12
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

    .line 491
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 493
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->hasOutputFormat:Z

    .line 534
    iget-object v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 493
    const/4 v2, 0x5

    const/4 v3, 0x2

    if-nez v0, :cond_1

    .line 494
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 495
    .local v0, "audioObjectType":I
    if-eq v0, v3, :cond_0

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected audio object type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but assuming AAC LC."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdtsReader"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x2

    .line 509
    :cond_0
    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 510
    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 512
    .local v4, "channelConfig":I
    iget v5, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 513
    invoke-static {v0, v5, v4}, Landroidx/media3/extractor/AacUtil;->buildAudioSpecificConfig(III)[B

    move-result-object v5

    .line 515
    .local v5, "audioSpecificConfig":[B
    invoke-static {v5}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v6

    .line 516
    .local v6, "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v8, p0, Landroidx/media3/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 518
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    iget-object v8, p0, Landroidx/media3/extractor/ts/AdtsReader;->containerMimeType:Ljava/lang/String;

    .line 519
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 520
    const-string v8, "audio/mp4a-latm"

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    iget-object v8, v6, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 521
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    iget v8, v6, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    .line 522
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    iget v8, v6, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 523
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 524
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    iget-object v8, p0, Landroidx/media3/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 525
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    iget v8, p0, Landroidx/media3/extractor/ts/AdtsReader;->roleFlags:I

    .line 526
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 527
    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v7

    .line 530
    .local v7, "format":Landroidx/media3/common/Format;
    iget v8, v7, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v8, v8

    const-wide/32 v10, 0x3d090000

    div-long/2addr v10, v8

    iput-wide v10, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 531
    iget-object v8, p0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v8, v7}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 532
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->hasOutputFormat:Z

    .line 533
    .end local v0    # "audioObjectType":I
    .end local v4    # "channelConfig":I
    .end local v5    # "audioSpecificConfig":[B
    .end local v6    # "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    .end local v7    # "format":Landroidx/media3/common/Format;
    goto :goto_0

    .line 534
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 537
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 538
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    .line 539
    .local v0, "sampleSize":I
    iget-boolean v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v1, :cond_2

    .line 540
    add-int/lit8 v0, v0, -0x2

    move v6, v0

    goto :goto_1

    .line 539
    :cond_2
    move v6, v0

    .line 543
    .end local v0    # "sampleSize":I
    .local v6, "sampleSize":I
    :goto_1
    iget-object v2, p0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v3, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/ts/AdtsReader;->setReadingSampleState(Landroidx/media3/extractor/TrackOutput;JII)V

    .line 544
    return-void
.end method

.method private parseId3Header()V
    .locals 9
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "id3Output"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 483
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 484
    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 485
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    .line 484
    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/ts/AdtsReader;->setReadingSampleState(Landroidx/media3/extractor/TrackOutput;JII)V

    .line 486
    return-void
.end method

.method private readSample(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 9
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentOutput"
        }
    .end annotation

    .line 549
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    iget v2, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 550
    .local v0, "bytesToRead":I
    iget-object v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 551
    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    .line 552
    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    iget v2, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    if-ne v1, v2, :cond_1

    .line 554
    iget-wide v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 555
    iget-object v2, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    iget-wide v3, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    iget v6, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v8}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 556
    iget-wide v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v3, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    .line 557
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 559
    :cond_1
    return-void
.end method

.method private resetSync()V
    .locals 1

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 220
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 221
    return-void
.end method

.method private setCheckingAdtsHeaderState()V
    .locals 1

    .line 282
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    .line 284
    return-void
.end method

.method private setFindingSampleState()V
    .locals 1

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    .line 242
    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    .line 243
    const/16 v0, 0x100

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    .line 244
    return-void
.end method

.method private setReadingAdtsHeaderState()V
    .locals 1

    .line 276
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    .line 278
    return-void
.end method

.method private setReadingId3HeaderState()V
    .locals 2

    .line 251
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    .line 252
    sget-object v0, Landroidx/media3/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    .line 254
    iget-object v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 255
    return-void
.end method

.method private setReadingSampleState(Landroidx/media3/extractor/TrackOutput;JII)V
    .locals 1
    .param p1, "outputToUse"    # Landroidx/media3/extractor/TrackOutput;
    .param p2, "currentSampleDuration"    # J
    .param p4, "priorReadBytes"    # I
    .param p5, "sampleSize"    # I

    .line 267
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    .line 268
    iput p4, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    .line 269
    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    .line 270
    iput-wide p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 271
    iput p5, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    .line 272
    return-void
.end method

.method private tryRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 2
    .param p1, "source"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 472
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_0

    .line 473
    return v1

    .line 475
    :cond_0
    invoke-virtual {p1, p2, v1, p3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 476
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 2
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->assertTracksCreated()V

    .line 177
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2

    .line 178
    iget v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 197
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/AdtsReader;->readSample(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 198
    goto :goto_0

    .line 191
    :pswitch_1
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    .line 192
    .local v0, "targetLength":I
    :goto_1
    iget-object v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v1, v1, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Landroidx/media3/extractor/ts/AdtsReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_0

    .line 183
    .end local v0    # "targetLength":I
    :pswitch_2
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/ts/AdtsReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_0

    .line 188
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/AdtsReader;->checkAdtsHeader(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 189
    goto :goto_0

    .line 180
    :pswitch_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/AdtsReader;->findNextSample(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 181
    goto :goto_0

    .line 203
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 3
    .param p1, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 151
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 152
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 153
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 154
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    .line 155
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 157
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    .line 158
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 160
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/ts/AdtsReader;->containerMimeType:Ljava/lang/String;

    .line 161
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 162
    const-string v2, "application/id3"

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    .line 167
    :goto_0
    return-void
.end method

.method public getSampleDurationUs()J
    .locals 2

    .line 215
    iget-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    return-wide v0
.end method

.method public packetFinished(Z)V
    .locals 0
    .param p1, "isEndOfInput"    # Z

    .line 208
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 171
    iput-wide p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    .line 172
    return-void
.end method

.method public seek()V
    .locals 2

    .line 145
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    .line 146
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->resetSync()V

    .line 147
    return-void
.end method
