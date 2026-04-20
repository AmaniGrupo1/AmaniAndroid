.class final Landroidx/media3/extractor/ts/H265Reader$SampleReader;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/H265Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation


# static fields
.field private static final FIRST_SLICE_FLAG_OFFSET:I = 0x2


# instance fields
.field private isFirstPrefixNalUnit:Z

.field private isFirstSlice:Z

.field private lookingForFirstSliceFlag:Z

.field private nalUnitBytesRead:I

.field private nalUnitHasKeyframeData:Z

.field private nalUnitPosition:J

.field private nalUnitTimeUs:J

.field private final output:Landroidx/media3/extractor/TrackOutput;

.field private readingPrefix:Z

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media3/extractor/TrackOutput;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 330
    return-void
.end method

.method private static isPrefixNalUnit(I)Z
    .locals 1
    .param p0, "nalUnitType"    # I

    .line 411
    const/16 v0, 0x20

    if-gt v0, p0, :cond_0

    const/16 v0, 0x23

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x27

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isVclBodyNalUnit(I)Z
    .locals 1
    .param p0, "nalUnitType"    # I

    .line 418
    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x28

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private outputSample(I)V
    .locals 8
    .param p1, "offset"    # I

    .line 401
    iget-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move v6, p1

    goto :goto_0

    .line 404
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    move v4, v0

    .line 405
    .local v4, "flags":I
    iget-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 406
    .local v5, "size":I
    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const/4 v7, 0x0

    move v6, p1

    .end local p1    # "offset":I
    .local v6, "offset":I
    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 407
    return-void

    .line 401
    .end local v4    # "flags":I
    .end local v5    # "size":I
    .end local v6    # "offset":I
    .restart local p1    # "offset":I
    :cond_1
    move v6, p1

    .line 402
    .end local p1    # "offset":I
    .restart local v6    # "offset":I
    :goto_0
    return-void
.end method


# virtual methods
.method public endNalUnit(JIZ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "hasOutputFormat"    # Z

    .line 382
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_0

    .line 384
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    goto :goto_0

    .line 386
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_3

    .line 388
    :cond_1
    if-eqz p4, :cond_2

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_2

    .line 390
    iget-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 391
    .local v0, "nalUnitLength":I
    add-int v1, p3, v0

    invoke-direct {p0, v1}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 393
    .end local v0    # "nalUnitLength":I
    :cond_2
    iget-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    .line 394
    iget-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    .line 395
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 398
    :cond_3
    :goto_0
    return-void
.end method

.method public readNalUnitData([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 370
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v0, :cond_2

    .line 371
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int/2addr v0, v1

    .line 372
    .local v0, "headerOffset":I
    if-ge v0, p3, :cond_1

    .line 373
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 374
    iput-boolean v2, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    goto :goto_1

    .line 376
    :cond_1
    iget v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    .line 379
    .end local v0    # "headerOffset":I
    :cond_2
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 334
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 335
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 336
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 337
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    .line 338
    return-void
.end method

.method public startNalUnit(JIIJZ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "nalUnitType"    # I
    .param p5, "pesTimeUs"    # J
    .param p7, "hasOutputFormat"    # Z

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 343
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 344
    iput-wide p5, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    .line 345
    iput v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    .line 346
    iput-wide p1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    .line 348
    invoke-static {p4}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isVclBodyNalUnit(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 349
    iget-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-nez v1, :cond_1

    .line 350
    if-eqz p7, :cond_0

    .line 351
    invoke-direct {p0, p3}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 353
    :cond_0
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 355
    :cond_1
    invoke-static {p4}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isPrefixNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    iget-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 357
    iput-boolean v2, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    .line 362
    :cond_2
    const/16 v1, 0x10

    if-lt p4, v1, :cond_3

    const/16 v1, 0x15

    if-gt p4, v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    .line 365
    iget-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez v1, :cond_4

    const/16 v1, 0x9

    if-gt p4, v1, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 367
    return-void
.end method
