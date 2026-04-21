.class final Landroidx/media3/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Landroidx/media3/extractor/TrackOutput;

.field private final pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/container/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field private previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private randomAccessIndicator:Z

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private final sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/container/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;ZZ)V
    .locals 3
    .param p1, "output"    # Landroidx/media3/extractor/TrackOutput;
    .param p2, "allowNonIdrKeyframes"    # Z
    .param p3, "detectAccessUnits"    # Z

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 326
    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 327
    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 328
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 329
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 330
    new-instance v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Landroidx/media3/extractor/ts/H264Reader$1;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 331
    new-instance v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Landroidx/media3/extractor/ts/H264Reader$1;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 332
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 333
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 334
    invoke-virtual {p0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->reset()V

    .line 335
    return-void
.end method

.method private outputSample(I)V
    .locals 8
    .param p1, "offset"    # I

    .line 536
    iget-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move v6, p1

    goto :goto_0

    .line 539
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    move v4, v0

    .line 540
    .local v4, "flags":I
    iget-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 541
    .local v5, "size":I
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const/4 v7, 0x0

    move v6, p1

    .end local p1    # "offset":I
    .local v6, "offset":I
    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 542
    return-void

    .line 536
    .end local v4    # "flags":I
    .end local v5    # "size":I
    .end local v6    # "offset":I
    .restart local p1    # "offset":I
    :cond_1
    move v6, p1

    .line 537
    .end local p1    # "offset":I
    .restart local v6    # "offset":I
    :goto_0
    return-void
.end method

.method private setSampleIsKeyframe()V
    .locals 5

    .line 529
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->randomAccessIndicator:Z

    .line 530
    .local v0, "treatIFrameAsKeyframe":Z
    :goto_0
    iget-boolean v1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget v2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    if-eqz v0, :cond_1

    iget v2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_1
    or-int/2addr v1, v4

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 533
    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 24
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 384
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v2, :cond_0

    .line 385
    return-void

    .line 387
    :cond_0
    sub-int v2, p3, v1

    .line 388
    .local v2, "readLength":I
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v3, v3

    iget v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v4, v2

    const/4 v5, 0x2

    if-ge v3, v4, :cond_1

    .line 389
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v4, v2

    mul-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 391
    :cond_1
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move-object/from16 v6, p1

    invoke-static {v6, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    iget v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 394
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v7, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->reset([BII)V

    .line 395
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 396
    return-void

    .line 398
    :cond_2
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 399
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v11

    .line 400
    .local v11, "nalRefIdc":I
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 404
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v3

    if-nez v3, :cond_3

    .line 405
    return-void

    .line 407
    :cond_3
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 408
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v3

    if-nez v3, :cond_4

    .line 409
    return-void

    .line 411
    :cond_4
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 412
    .local v12, "sliceType":I
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v3, :cond_5

    .line 414
    iput-boolean v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 415
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v3, v12}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    .line 416
    return-void

    .line 418
    :cond_5
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v3

    if-nez v3, :cond_6

    .line 419
    return-void

    .line 421
    :cond_6
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    .line 422
    .local v14, "picParameterSetId":I
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_7

    .line 424
    iput-boolean v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 425
    return-void

    .line 427
    :cond_7
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/NalUnitUtil$PpsData;

    .line 428
    .local v3, "ppsData":Landroidx/media3/container/NalUnitUtil$PpsData;
    iget-object v7, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v9, v3, Landroidx/media3/container/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 429
    .local v10, "spsData":Landroidx/media3/container/NalUnitUtil$SpsData;
    iget-boolean v7, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v7, :cond_9

    .line 430
    iget-object v7, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v7, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v7

    if-nez v7, :cond_8

    .line 431
    return-void

    .line 433
    :cond_8
    iget-object v7, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v7, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 435
    :cond_9
    iget-object v5, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    iget v7, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v5, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 436
    return-void

    .line 438
    :cond_a
    const/4 v5, 0x0

    .line 439
    .local v5, "fieldPicFlag":Z
    const/4 v7, 0x0

    .line 440
    .local v7, "bottomFieldFlagPresent":Z
    const/4 v9, 0x0

    .line 441
    .local v9, "bottomFieldFlag":Z
    iget-object v13, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    iget v15, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v13, v15}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v13

    .line 442
    .local v13, "frameNum":I
    iget-boolean v15, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    const/4 v8, 0x1

    if-nez v15, :cond_e

    .line 443
    iget-object v15, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v15, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v15

    if-nez v15, :cond_b

    .line 444
    return-void

    .line 446
    :cond_b
    iget-object v15, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v15}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    .line 447
    if-eqz v5, :cond_d

    .line 448
    iget-object v15, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v15, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v15

    if-nez v15, :cond_c

    .line 449
    return-void

    .line 451
    :cond_c
    iget-object v15, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v15}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    .line 452
    const/4 v7, 0x1

    move v15, v5

    move/from16 v16, v7

    move/from16 v17, v9

    goto :goto_0

    .line 447
    :cond_d
    move v15, v5

    move/from16 v16, v7

    move/from16 v17, v9

    goto :goto_0

    .line 442
    :cond_e
    move v15, v5

    move/from16 v16, v7

    move/from16 v17, v9

    .line 455
    .end local v5    # "fieldPicFlag":Z
    .end local v7    # "bottomFieldFlagPresent":Z
    .end local v9    # "bottomFieldFlag":Z
    .local v15, "fieldPicFlag":Z
    .local v16, "bottomFieldFlagPresent":Z
    .local v17, "bottomFieldFlag":Z
    :goto_0
    iget v5, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v5, v4, :cond_f

    move/from16 v18, v8

    goto :goto_1

    :cond_f
    const/16 v18, 0x0

    .line 456
    .local v18, "idrPicFlag":Z
    :goto_1
    const/4 v4, 0x0

    .line 457
    .local v4, "idrPicId":I
    if-eqz v18, :cond_11

    .line 458
    iget-object v5, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v5

    if-nez v5, :cond_10

    .line 459
    return-void

    .line 461
    :cond_10
    iget-object v5, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    move/from16 v19, v4

    goto :goto_2

    .line 457
    :cond_11
    move/from16 v19, v4

    .line 463
    .end local v4    # "idrPicId":I
    .local v19, "idrPicId":I
    :goto_2
    const/4 v4, 0x0

    .line 464
    .local v4, "picOrderCntLsb":I
    const/4 v5, 0x0

    .line 465
    .local v5, "deltaPicOrderCntBottom":I
    const/4 v7, 0x0

    .line 466
    .local v7, "deltaPicOrderCnt0":I
    const/4 v9, 0x0

    .line 467
    .local v9, "deltaPicOrderCnt1":I
    iget v8, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v8, :cond_14

    .line 468
    iget-object v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    iget v1, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v8, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 469
    return-void

    .line 471
    :cond_12
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    iget v8, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v1, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 472
    iget-boolean v1, v3, Landroidx/media3/container/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_17

    if-nez v15, :cond_17

    .line 473
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_13

    .line 474
    return-void

    .line 476
    :cond_13
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v5

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v23, v9

    goto :goto_3

    .line 478
    :cond_14
    iget v1, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_17

    iget-boolean v1, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v1, :cond_17

    .line 479
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_15

    .line 480
    return-void

    .line 482
    :cond_15
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v7

    .line 483
    iget-boolean v1, v3, Landroidx/media3/container/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_17

    if-nez v15, :cond_17

    .line 484
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_16

    .line 485
    return-void

    .line 487
    :cond_16
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v9

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v23, v9

    goto :goto_3

    .line 490
    :cond_17
    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v23, v9

    .end local v4    # "picOrderCntLsb":I
    .end local v5    # "deltaPicOrderCntBottom":I
    .end local v7    # "deltaPicOrderCnt0":I
    .end local v9    # "deltaPicOrderCnt1":I
    .local v20, "picOrderCntLsb":I
    .local v21, "deltaPicOrderCntBottom":I
    .local v22, "deltaPicOrderCnt0":I
    .local v23, "deltaPicOrderCnt1":I
    :goto_3
    iget-object v9, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual/range {v9 .. v23}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Landroidx/media3/container/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    .line 505
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 506
    return-void
.end method

.method public endNalUnit(JIZ)Z
    .locals 2
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "hasOutputFormat"    # Z

    .line 509
    iget v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 510
    invoke-static {v0, v1}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    :cond_0
    if-eqz p4, :cond_1

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_1

    .line 513
    iget-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 514
    .local v0, "nalUnitLength":I
    add-int v1, p3, v0

    invoke-direct {p0, v1}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    .line 516
    .end local v0    # "nalUnitLength":I
    :cond_1
    iget-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 517
    iget-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 521
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->setSampleIsKeyframe()V

    .line 523
    const/16 v0, 0x18

    iput v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 524
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    return v0
.end method

.method public needsSpsPps()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    return v0
.end method

.method public putPps(Landroidx/media3/container/NalUnitUtil$PpsData;)V
    .locals 2
    .param p1, "ppsData"    # Landroidx/media3/container/NalUnitUtil$PpsData;

    .line 346
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/media3/container/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 347
    return-void
.end method

.method public putSps(Landroidx/media3/container/NalUnitUtil$SpsData;)V
    .locals 2
    .param p1, "spsData"    # Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 342
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/media3/container/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 343
    return-void
.end method

.method public reset()V
    .locals 1

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 351
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 352
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 353
    return-void
.end method

.method public startNalUnit(JIJZ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "type"    # I
    .param p4, "pesTimeUs"    # J
    .param p6, "randomAccessIndicator"    # Z

    .line 357
    iput p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 358
    iput-wide p4, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 359
    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 360
    iput-boolean p6, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->randomAccessIndicator:Z

    .line 361
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 367
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 368
    .local v0, "newSliceHeader":Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    iget-object v2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 369
    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 370
    iget-object v2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v2}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 371
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 372
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 374
    .end local v0    # "newSliceHeader":Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    :cond_2
    return-void
.end method
